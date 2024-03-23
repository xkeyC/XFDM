// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh_CN locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'zh_CN';

  static String m0(v0) => "出现错误: ${v0}";

  static String m1(v0, v1) => "下载： ${v0}/s    上传：${v1}/s";

  static String m2(v0) => "已下载：${v0}";

  static String m3(v0) => "下载中... (${v0}%)";

  static String m4(v0) => "状态：${v0}";

  static String m5(v1) => "总大小：${v1}";

  static String m6(v0) => "已上传：${v0}";

  static String m7(v2) => "校验中...（${v2}）";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "action_open_folder": MessageLookupByLibrary.simpleMessage("打开文件夹"),
        "app_common_error_info": m0,
        "app_common_tip": MessageLookupByLibrary.simpleMessage("提示"),
        "app_common_tip_cancel": MessageLookupByLibrary.simpleMessage("取消"),
        "app_common_tip_confirm": MessageLookupByLibrary.simpleMessage("确认"),
        "app_common_tip_i_know": MessageLookupByLibrary.simpleMessage("我知道了"),
        "app_language_code": MessageLookupByLibrary.simpleMessage("zh_CN"),
        "app_language_name": MessageLookupByLibrary.simpleMessage("简体中文"),
        "downloader_action_cancel_all":
            MessageLookupByLibrary.simpleMessage("全部取消"),
        "downloader_action_cancel_download":
            MessageLookupByLibrary.simpleMessage("取消下载"),
        "downloader_action_confirm_cancel_all_tasks":
            MessageLookupByLibrary.simpleMessage("确认取消全部任务？"),
        "downloader_action_confirm_cancel_download":
            MessageLookupByLibrary.simpleMessage("确认取消下载？"),
        "downloader_action_continue_download":
            MessageLookupByLibrary.simpleMessage("继续下载"),
        "downloader_action_options": MessageLookupByLibrary.simpleMessage("选项"),
        "downloader_action_pause_all":
            MessageLookupByLibrary.simpleMessage("全部暂停"),
        "downloader_action_pause_download":
            MessageLookupByLibrary.simpleMessage("暂停下载"),
        "downloader_action_resume_all":
            MessageLookupByLibrary.simpleMessage("恢复全部"),
        "downloader_info_deleted": MessageLookupByLibrary.simpleMessage("已删除"),
        "downloader_info_download_completed":
            MessageLookupByLibrary.simpleMessage("下载完成"),
        "downloader_info_download_failed":
            MessageLookupByLibrary.simpleMessage("下载失败"),
        "downloader_info_download_unit_input_prompt":
            MessageLookupByLibrary.simpleMessage(
                "请输入下载单位，如：1、100k、10m， 0或留空为不限速。"),
        "downloader_info_download_upload_speed": m1,
        "downloader_info_downloaded": m2,
        "downloader_info_downloading": m3,
        "downloader_info_downloading_status":
            MessageLookupByLibrary.simpleMessage("下载中..."),
        "downloader_info_manual_file_deletion_note":
            MessageLookupByLibrary.simpleMessage("如果文件不再需要，你可能需要手动删除下载文件。"),
        "downloader_info_no_download_tasks":
            MessageLookupByLibrary.simpleMessage("无下载任务"),
        "downloader_info_paused": MessageLookupByLibrary.simpleMessage("已暂停"),
        "downloader_info_status": m4,
        "downloader_info_total_size": m5,
        "downloader_info_uploaded": m6,
        "downloader_info_verifying": m7,
        "downloader_info_waiting": MessageLookupByLibrary.simpleMessage("等待中"),
        "downloader_input_download_speed_limit":
            MessageLookupByLibrary.simpleMessage("下载限速："),
        "downloader_input_upload_speed_limit":
            MessageLookupByLibrary.simpleMessage("上传限速："),
        "downloader_settings": MessageLookupByLibrary.simpleMessage("设置"),
        "downloader_title_downloading":
            MessageLookupByLibrary.simpleMessage("下载中"),
        "downloader_title_ended": MessageLookupByLibrary.simpleMessage("已结束")
      };
}
