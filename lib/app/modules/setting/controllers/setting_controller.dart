import 'package:get/get.dart';
import 'package:nested_getx/app/core/values/navigation_ids.dart';

class SettingController extends GetxController {
  void goBack() {
    Get.back(id: nestedNavigationProfileId);
  }
}
