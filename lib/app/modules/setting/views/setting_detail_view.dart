import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/setting_controller.dart';

class SettingDetailView extends GetView<SettingController> {
  const SettingDetailView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SettingDetailView'), centerTitle: true),
      body: Center(
        child: TextButton(onPressed: controller.goBack, child: Text("Go back")),
      ),
    );
  }
}
