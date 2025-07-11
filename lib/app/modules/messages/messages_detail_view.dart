import 'package:flutter/material.dart';

class MessagesDetailView extends StatelessWidget {
  const MessagesDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MessagesDetailView'),
        centerTitle: true,
      ),
      body: Center(child: Column(children: [Text('MessagesDetailView')])),
    );
  }
}
