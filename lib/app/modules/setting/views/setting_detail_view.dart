import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/setting_controller.dart';

class SettingDetailView extends GetView<SettingController> {
  const SettingDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        controller.goBack;
        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('SettingDetailView'),
          centerTitle: true,
        ),
        body: Center(
          child: TextButton(
            onPressed: controller.goBack,
            child: Text("Go back"),
          ),
        ),
      ),
    );
  }
}
