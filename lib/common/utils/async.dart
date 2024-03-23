import 'package:fluent_ui/fluent_ui.dart';
import 'package:xfdm/common/utils/base_utils.dart';
import 'package:xfdm/common/utils/log.dart';
import 'package:xfdm/generated/l10n.dart';

extension AsyncError on Future {
  Future<T?> unwrap<T>({BuildContext? context}) async {
    try {
      return await this;
    } catch (e) {
      dPrint("unwrap error:$e");
      if (context != null && context.mounted) {
        showToast(context, S.current.app_common_error_info(e.toString()));
      }
      return null;
    }
  }
}
