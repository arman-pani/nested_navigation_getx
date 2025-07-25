import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_getx/app/core/values/navigation_ids.dart';
import 'package:nested_getx/app/routes/app_pages.dart';

import '../controllers/setting_controller.dart';

class SettingView extends GetView<SettingController> {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SettingView'), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: controller.goBack,
              child: const Text("Go back"),
            ),
            TextButton(
              onPressed: () => Get.toNamed(
                Routes.SETTINGDETAIL,
                id: nestedNavigationProfileId,
              ),
              child: const Text("SETTING DETAIL"),
            ),
          ],
        ),
      ),
    );
  }
}
