import 'dart:convert';
import 'dart:io';

import 'package:desktop_drop/desktop_drop.dart';
import 'package:file_picker/file_picker.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:local_hero/local_hero.dart';
import 'package:path_provider/path_provider.dart';
import 'package:xfdm/common/utils/async.dart';
import 'package:xfdm/common/utils/base_utils.dart';
import 'package:xfdm/generated/l10n.dart';
import 'package:path/path.dart' as path;
import 'package:xfdm/provider/aria2c.dart';

class NewDownloadTaskDialogUI extends HookConsumerWidget {
  const NewDownloadTaskDialogUI({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final downloadTypes = {
      "URL": "链接（http/https/ftp/sftp/Magnet）",
      "BitTorrent": "BitTorrent 文件",
    };
    final textCtrl = useTextEditingController();
    final selectedType = useState(downloadTypes.keys.first);
    final isInFileDrop = useState(false);
    final torrentFiles = useState(<String>[]);
    final userDownloadDirs = useState(<String>[]);
    final selectedDownloadDir = useState<String?>(null);
    final aria2cState = ref.read(aria2cModelProvider);

    useListenable(textCtrl);

    Future<void> goSelectFiles() async {
      final result = await FilePicker.platform.pickFiles(
          dialogTitle: "请选择 BitTorrent 文件",
          type: FileType.custom,
          allowedExtensions: ["torrent"],
          allowMultiple: true,
          lockParentWindow: true);
      if (result == null) return;
      final newList = (result.paths..removeWhere((element) => element == null))
          .map((e) => e!)
          .toList();
      torrentFiles.value = <String>{...torrentFiles.value, ...newList}.toList();
    }

    void onFileDrop(DropDoneDetails detail) {
      final newList = detail.files.map((e) => e.path).toList();
      torrentFiles.value = <String>{...torrentFiles.value, ...newList}.toList();
    }

    loadDownloadDirs() async {
      final dirs = <String>{};
      final sysDefault = await getDownloadsDirectory();
      if (sysDefault != null) {
        final appPath = path.join(sysDefault.absolute.path, "XFDM");
        dirs.add(appPath);
      }
      final confBox = await Hive.openBox("app_conf");
      final paths = confBox.get("download_paths", defaultValue: <String>[]);
      dirs.addAll(paths);
      userDownloadDirs.value = dirs.toList();
      selectedDownloadDir.value = dirs.firstOrNull;
    }

    selectDownloadDir() async {
      var isPathExists = false;
      if (await Directory(selectedDownloadDir.value ?? "").exists()) {
        isPathExists = true;
      }
      final userSelectDir = await FilePicker.platform.getDirectoryPath(
        dialogTitle: "选择保存目录",
        initialDirectory: isPathExists ? selectedDownloadDir.value : null,
        lockParentWindow: true,
      );
      if (userSelectDir == null) return;
      if (userDownloadDirs.value.contains(userSelectDir)) {
        selectedDownloadDir.value = userSelectDir;
      } else {
        // save to hive
        final confBox = await Hive.openBox("app_conf");
        List<String> paths =
            confBox.get("download_paths", defaultValue: <String>[]);
        paths.add(userSelectDir);
        confBox.put("download_paths", paths.toSet().toList());
        await loadDownloadDirs();
        selectedDownloadDir.value = userSelectDir;
      }
    }

    List<String> getUserInPutUrls() => textCtrl.text.split("\n")
      ..removeWhere((element) => element.trim().isEmpty);

    onDownloadUrl(BuildContext context) async {
      final urls = getUserInPutUrls();
      try {
        final r = await aria2cState.aria2c?.addUri(urls, extraParams: {
          "dir": selectedDownloadDir.value,
        }).unwrap();
        if (r != null) {
          if (!context.mounted) return;
          Navigator.pop(context);
        }
      } catch (e) {
        if (!context.mounted) return;
        showToast(context, "出现错误：$e");
      }
    }

    onDownloadBitTorrent(BuildContext context) async {
      // read torrent files to base64 and add it
      for (var element in torrentFiles.value) {
        try {
          final file = File(element);
          final base64 = base64Encode(file.readAsBytesSync());
          await aria2cState.aria2c?.addTorrent(base64, extraParams: {
            "dir": selectedDownloadDir.value,
          });
        } catch (e) {
          if (!context.mounted) return;
          showToast(context, "出现错误：$e");
        }
        if (!context.mounted) return;
        Navigator.pop(context);
      }
    }

    useEffect(() {
      loadDownloadDirs();
      return null;
    }, []);

    return ContentDialog(
      title: const Text("新建下载任务"),
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * .46,
      ),
      content: AnimatedSize(
        duration: const Duration(milliseconds: 130),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 16),
            Row(
              children: [
                const Text("类型："),
                const SizedBox(width: 12),
                Expanded(
                    child: ComboBox<String>(
                  value: selectedType.value,
                  isExpanded: true,
                  items: [
                    for (final item in downloadTypes.entries)
                      ComboBoxItem(
                        value: item.key,
                        child: Text(item.value),
                      ),
                  ],
                  onChanged: (v) => selectedType.value = v!,
                )),
              ],
            ),
            SizedBox(height: selectedType.value == "URL" ? 4 : 16),
            if (selectedType.value == "URL")
              Column(
                children: [
                  const SizedBox(height: 12),
                  TextFormBox(
                    placeholder: "请输入下载链接，多个链接请换行输入",
                    maxLines: 30,
                    minLines: 5,
                    controller: textCtrl,
                  ),
                ],
              )
            else if (selectedType.value == "BitTorrent")
              LocalHeroScope(
                duration: const Duration(milliseconds: 130),
                child: Column(
                  children: [
                    Container(
                      key: Key("torrent_file_${isInFileDrop.value}"),
                      height: torrentFiles.value.isEmpty ? 160 : null,
                      decoration: BoxDecoration(
                        color: Colors.white
                            .withOpacity(isInFileDrop.value ? .2 : .1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: DropTarget(
                        onDragEntered: (_) => isInFileDrop.value = true,
                        onDragExited: (_) => isInFileDrop.value = false,
                        onDragDone: (detail) => onFileDrop(detail),
                        child: Button(
                          onPressed: goSelectFiles,
                          child: torrentFiles.value.isEmpty
                              ? Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const LocalHero(
                                  tag: "ic_open_file",
                                  child: Icon(FluentIcons.open_file,
                                      size: 32),
                                ),
                                const SizedBox(height: 12),
                                Text(isInFileDrop.value
                                    ? "释放文件以添加"
                                    : "拖放文件或点击此处选择文件"),
                              ],
                            ),
                          )
                              : Padding(
                            padding: const EdgeInsets.only(
                                left: 12,
                                right: 12,
                                top: 16,
                                bottom: 16),
                            child: Row(
                              children: [
                                const LocalHero(
                                  tag: "ic_open_file",
                                  child: Icon(FluentIcons.open_file,
                                      size: 32),
                                ),
                                const SizedBox(width: 12),
                                Text(isInFileDrop.value
                                    ? "释放文件以添加"
                                    : "拖放文件或点击此处选择文件"),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    if (torrentFiles.value.isNotEmpty) ...[
                      const SizedBox(height: 12),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.1),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: torrentFiles.value.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Row(
                              children: [
                                const Icon(FluentIcons.open_file),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Text(torrentFiles.value[index]),
                                ),
                                IconButton(
                                  icon: const Icon(FluentIcons.delete),
                                  onPressed: () {
                                    torrentFiles.value.removeAt(index);
                                    torrentFiles.value =
                                        List.of(torrentFiles.value);
                                  },
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            const SizedBox(height: 24),
            if (userDownloadDirs.value.isNotEmpty)
              Row(
                children: [
                  const Text("下载到："),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ComboBox<String?>(
                      onChanged: (v) => selectedDownloadDir.value = v!,
                      value: selectedDownloadDir.value,
                      isExpanded: true,
                      items: [
                        for (final item in userDownloadDirs.value)
                          ComboBoxItem(
                            value: item,
                            child: Text(item),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 6),
                  Button(
                      onPressed: selectDownloadDir,
                      child: const Padding(
                        padding: EdgeInsets.all(5),
                        child: Icon(FluentIcons.folder_query),
                      )),
                ],
              )
          ],
        ),
      ),
      actions: [
        FilledButton(
          onPressed: (selectedType.value == "URL")
              ? getUserInPutUrls().isEmpty
                  ? null
                  : () => onDownloadUrl(context)
              : torrentFiles.value.isEmpty
                  ? null
                  : () => onDownloadBitTorrent(context),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 2, bottom: 2, left: 8, right: 8),
            child: Text(S.current.app_common_tip_confirm),
          ),
        ),
        Button(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 2, bottom: 2, left: 8, right: 8),
            child: Text(S.current.app_common_tip_cancel),
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
  }
}
