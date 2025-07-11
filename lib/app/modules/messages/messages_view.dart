import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_getx/app/modules/messages/messages_controller.dart';

class MessagesView extends GetView<MessagesController> {
  const MessagesView({super.key});

  @override
  Widget build(BuildContext context) {
    // !!!
    return Scaffold(
      appBar: AppBar(title: const Text('MessagesView'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => controller.goToMessageDetail(),
              child: Text('Go to details'),
            ),
          ],
        ),
      ),
    );
  }
}
