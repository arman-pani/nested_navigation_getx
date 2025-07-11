import 'package:get/get.dart';
import 'package:nested_getx/app/core/values/navigation_ids.dart';
import 'package:nested_getx/app/routes/app_pages.dart';

class MessagesController extends GetxController {
  void goToMessageDetail() {
    // id is necessary for nested routing, id must be and number same as key of Navigator in ProfileWrapper
    Get.toNamed(Routes.MESSAGESDETAIL, id: nestedNavigationMessagesId);
  }
}
