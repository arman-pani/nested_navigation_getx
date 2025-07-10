import 'package:get/get.dart';
import 'package:nested_getx/app/core/values/navigation_ids.dart';
import 'package:nested_getx/app/routes/app_pages.dart';

class ProfileController extends GetxController {
  void goToSettingPage() {
    // id is necessary for nested routing, id must be and number same as key of Navigator in ProfileWrapper
    Get.toNamed(Routes.SETTING, id: nestedNavigationProfileId);
  }
}
