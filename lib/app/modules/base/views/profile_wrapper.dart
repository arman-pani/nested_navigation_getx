import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_getx/app/core/values/navigation_ids.dart';
import 'package:nested_getx/app/modules/base/controllers/base_controller.dart';
import 'package:nested_getx/app/modules/setting/views/setting_detail_view.dart';
import 'package:nested_getx/app/modules/setting/views/setting_view.dart';

import '../../../routes/app_pages.dart';
import '../../profile/bindings/profile_binding.dart';
import '../../profile/views/profile_view.dart';
import '../../setting/bindings/setting_binding.dart';

class ProfileWrapper extends StatelessWidget {
  ProfileWrapper({super.key});

  bool isRoot = false;

  @override
  Widget build(BuildContext context) {
    final baseController = Get.find<BaseController>();

    return WillPopScope(
      onWillPop: () {
        if (baseController.routesString.length > 1) {
          baseController.routesString.removeAt(
            baseController.routesString.length - 1,
          );
          debugPrint("Routes list: ${baseController.routesString.toString()}");
          Get.back(id: nestedNavigationProfileId);
        } else {
          isRoot = true;
        }
        return Future.value(isRoot);
      },
      child: Navigator(
        // !important
        key: Get.nestedKey(nestedNavigationProfileId),
        initialRoute: Routes.PROFILE,
        onGenerateRoute: (routeSettings) {
          if (routeSettings.name == Routes.PROFILE) {
            baseController.routesString.add(Routes.PROFILE);
            debugPrint(
              "Routes list: ${baseController.routesString.toString()}",
            );

            isRoot = true;
            return GetPageRoute(
              routeName: Routes.PROFILE,
              title: "Profile Page",
              page: () => const ProfileView(),
              binding: ProfileBinding(),
            );
          } else if (routeSettings.name == Routes.SETTING) {
            isRoot = false;
            baseController.routesString.add(Routes.SETTING);
            debugPrint(
              "Routes list: ${baseController.routesString.toString()}",
            );

            return GetPageRoute(
              routeName: Routes.SETTING,
              title: "Settings Page",
              page: () => const SettingView(),
              binding: SettingBinding(),
            );
          } else if (routeSettings.name == Routes.SETTINGDETAIL) {
            isRoot = false;
            baseController.routesString.add(Routes.SETTINGDETAIL);
            debugPrint(
              "Routes list: ${baseController.routesString.toString()}",
            );

            return GetPageRoute(
              routeName: Routes.SETTINGDETAIL,
              title: "Settings Detail Page",
              page: () => const SettingDetailView(),
              binding: SettingBinding(),
            );
          }
          return null;
        },
      ),
    );
  }
}
