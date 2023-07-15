import 'package:get/get.dart';
import 'package:version_comparator/version_comparator.dart';

import '../../constants/string_constants.dart';
import '../../utils/utils.dart';

class UpdateController extends GetxController {
  Future<void> compareVersion({bool showSuccessToast = false}) async {
    final result = await VersionComparator.instance.versionCompare();
    _setResultMessage(result, showSuccessToast: showSuccessToast);
  }

  void _setResultMessage(DataResult<VersionResponseModel> result,
      {bool showSuccessToast = false}) {
    if (result.isNotSuccess || result.data == null) {
      Utils.showToast('Error: ${result.message}');
    } else if (result.data!.isAppVersionOld) {
      _showVersionDialog(result.data!);
    } else {
      if (showSuccessToast) {
        Utils.showToast(appVersionUpToDate);
      }
    }
  }

  Future<void> _showVersionDialog(VersionResponseModel versionResponseModel,
      {bool isRequired = false}) async {
    await VersionComparator.instance.showSimpleVersionDialog(
      Get.context!,
      versionResponseModel,
      isUpdateRequired: isRequired,
    );
  }
}
