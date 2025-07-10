import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_getx/app/modules/base/views/profile_wrapper.dart';
import 'package:nested_getx/app/modules/home/views/home_view.dart';

class BaseController extends GetxController {
  RxInt selectedIndex = 0.obs;
  late List<Widget> widgetOptions;

  List<String> routesString = [];

  BaseController() {
    widgetOptions = <Widget>[
      const HomeView(),
      // this wrapper allow us to nested routes inside it
      ProfileWrapper(),
    ];
  }

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }
}
