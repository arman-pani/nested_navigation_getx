import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_getx/app/core/values/navigation_ids.dart';
import 'package:nested_getx/app/modules/setting/views/setting_detail_view.dart';
import 'package:nested_getx/app/modules/setting/views/setting_view.dart';

import '../../../routes/app_pages.dart';
import '../../profile/bindings/profile_binding.dart';
import '../../profile/views/profile_view.dart';
import '../../setting/bindings/setting_binding.dart';

class ProfileWrapper extends StatelessWidget {
  const ProfileWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final navigator = Get.nestedKey(
          nestedNavigationProfileId,
        )?.currentState;
        if (navigator != null && navigator.canPop()) {
          navigator.pop();
          return false;
        }
        return true;
      },
      child: Navigator(
        key: Get.nestedKey(nestedNavigationProfileId),
        initialRoute: Routes.PROFILE,
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case Routes.PROFILE:
              return GetPageRoute(
                routeName: Routes.PROFILE,
                page: () => const ProfileView(),
                binding: ProfileBinding(),
              );
            case Routes.SETTING:
              return GetPageRoute(
                routeName: Routes.SETTING,
                page: () => const SettingView(),
                binding: SettingBinding(),
              );
            case Routes.SETTINGDETAIL:
              return GetPageRoute(
                routeName: Routes.SETTINGDETAIL,
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
