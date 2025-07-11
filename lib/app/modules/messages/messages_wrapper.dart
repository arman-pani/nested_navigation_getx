import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_getx/app/core/values/navigation_ids.dart';
import 'package:nested_getx/app/modules/messages/messages_binding.dart';
import 'package:nested_getx/app/modules/messages/messages_detail_view.dart';
import 'package:nested_getx/app/modules/messages/messages_view.dart';
import 'package:nested_getx/app/routes/app_pages.dart';

class MessagesWrapper extends StatelessWidget {
  const MessagesWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final navigator = Get.nestedKey(
          nestedNavigationMessagesId,
        )?.currentState;
        if (navigator != null && navigator.canPop()) {
          navigator.pop();
          return false;
        }
        return true;
      },
      child: Navigator(
        key: Get.nestedKey(nestedNavigationMessagesId),
        initialRoute: Routes.MESSAGES,
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case Routes.MESSAGES:
              return GetPageRoute(
                routeName: Routes.MESSAGES,
                page: () => const MessagesView(),
                binding: MessagesBinding(),
              );
            case Routes.MESSAGESDETAIL:
              return GetPageRoute(
                routeName: Routes.MESSAGESDETAIL,
                page: () => const MessagesDetailView(),
              );
          }
          return null;
        },
      ),
    );
  }
}
