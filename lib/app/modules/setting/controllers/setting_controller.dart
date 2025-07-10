import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_getx/app/core/values/navigation_ids.dart';
import 'package:nested_getx/app/modules/base/controllers/base_controller.dart';

class SettingController extends GetxController {
  final baseController = Get.find<BaseController>();

  void goBack() {
    // id is necessary to go back to previous nested route
    baseController.routesString.removeAt(
      baseController.routesString.length - 1,
    );
    debugPrint("Routes list: ${baseController.routesString.toString()}");
    Get.back(id: nestedNavigationProfileId);
  }
}
