import 'package:device_info_plus/device_info_plus.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:window_manager/window_manager.dart';
import 'package:xfdm/widgets/widgets.dart';

import 'common/rust/frb_generated.dart';
import 'common/utils/log.dart';
import 'ui/home_ui.dart';

part 'app.g.dart';

part 'app.freezed.dart';

AppGlobalState _initState = const AppGlobalState();

Future<void> preInitApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  final applicationSupportDir =
      (await getApplicationSupportDirectory()).absolute.path;

  _initState = _initState.copyWith(
      applicationSupportDir: applicationSupportDir,
      applicationBinaryModuleDir: "$applicationSupportDir/modules");

  await windowManager.ensureInitialized();
  WindowsDeviceInfo? windowsDeviceInfo;
  try {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    windowsDeviceInfo = await deviceInfo.windowsInfo;
  } catch (e) {
    dPrint("DeviceInfo.windowsInfo error: $e");
  }

  Hive.init("$applicationSupportDir/db");

  await RustLib.init();

  await windowManager.center(animate: true);
  windowManager.waitUntilReadyToShow().then((_) async {
    await windowManager.setSize(const Size(1280, 810));
    await windowManager.setMinimumSize(const Size(1280, 810));
    await windowManager.setSkipTaskbar(false);
    await windowManager.show();
    await Window.initialize();
    await Window.hideWindowControls();
    await windowManager.setTitleBarStyle(
      TitleBarStyle.hidden,
      windowButtonVisibility: false,
    );
    if (windowsDeviceInfo?.productName.contains("Windows 11") ?? false) {
      await Window.setEffect(
        effect: WindowEffect.acrylic,
      );
      dPrint("WindowEffect.acrylic active !");
    }
  });

}

@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) =>
            myPageBuilder(context, state, const HomeUI()),
      ),
    ],
  );
}

@freezed
class AppGlobalState with _$AppGlobalState {
  const factory AppGlobalState({
    String? applicationSupportDir,
    String? applicationBinaryModuleDir,
  }) = _AppGlobalState;
}

@riverpod
class AppGlobalModel extends _$AppGlobalModel {
  @override
  AppGlobalState build() {
    ref.keepAlive();
    state = _initState;
    return state;
  }
}
