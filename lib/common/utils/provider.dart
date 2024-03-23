import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xfdm/app.dart';

extension ProviderExtension on AutoDisposeNotifier {
  AppGlobalModel get appGlobalModel =>
      ref.read(appGlobalModelProvider.notifier);

  AppGlobalState get appGlobalState => ref.read(appGlobalModelProvider);
}
