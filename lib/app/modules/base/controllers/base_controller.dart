import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_getx/app/modules/base/views/profile_wrapper.dart';
import 'package:nested_getx/app/modules/home/views/home_view.dart';
import 'package:nested_getx/app/modules/messages/messages_wrapper.dart';

class BaseController extends GetxController {
  RxInt selectedIndex = 0.obs;
  late List<Widget> widgetOptions;

  BaseController() {
    widgetOptions = <Widget>[
      const HomeView(),
      ProfileWrapper(),
      MessagesWrapper(),
    ];
  }

  void onItemTapped(int index) async {
    if (selectedIndex.value == index) {
      final navigatorState = Get.keys[index]?.currentState;
      navigatorState?.popUntil((route) => route.isFirst);
    }
    selectedIndex.value = index;
  }
}
