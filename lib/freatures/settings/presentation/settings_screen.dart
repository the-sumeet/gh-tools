import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gh_tools/data/token.dart';

import '../../../constants.dart';
import '../../../widgets/body.dart';
import '../../../widgets/text_field.dart';

class SettingsScreen extends ConsumerWidget {
  final TextEditingController controller = TextEditingController();

  SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint("Building Settings screen");

    String? token = ref.watch(tokenProvider);
    debugPrint("Current token is $token");

    controller.text = token ?? "";

    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        actions: [
          IconButton(
            onPressed: () {
              _save(ref);
            },
            icon: saveIcon,
          )
        ],
      ),
      body: Body(
        child: Column(
          children: [
            TextFieldWidget(
              controller: controller,
              labelText: "GitHub Token",
            )
          ],
        ),
      ),
    );
  }

  void _save(WidgetRef ref) {
    ref.read(tokenProvider.notifier).set(controller.text);
  }
}
