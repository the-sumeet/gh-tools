import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gh_tools/data/token.dart';

import '../../../constants.dart';
import '../../../widgets/body.dart';
import '../../../widgets/text_field.dart';
import 'gistsDrawer.dart';

class GistsScreen extends ConsumerWidget {
  final TextEditingController controller = TextEditingController();

  GistsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint("Building Settings screen");

    String? token = ref.watch(tokenProvider);
    debugPrint("Current token is $token");

    controller.text = token ?? "";

    return Scaffold(
      appBar: AppBar(
        title: const Text("Gists"),
        actions: [
          IconButton(
            onPressed: () {
            },
            icon: saveIcon,
          )
        ],
      ),
      body: Body(
        child: Column(
          children: [
          ],
        ),
      ),
      drawer: GistsDrawer(),
    );
  }

}
