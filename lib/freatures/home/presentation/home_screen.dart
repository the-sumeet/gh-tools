import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gh_tools/constants.dart';
import 'package:gh_tools/freatures/home/presentation/toolsDrawer.dart';
import 'package:gh_tools/routes/app_route.dart';
import 'package:go_router/go_router.dart';

import '../../../data/token.dart';
import '../../../widgets/body.dart';
import '../../../widgets/text_field.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint("Building HomeScreen");

    String? token = ref.watch(tokenProvider);
    debugPrint("Current token is $token");

    return Scaffold(
      appBar: AppBar(
        title: const Text("GH Tools"),
        actions: [
          IconButton(
            onPressed: () {
context.pushNamed(AppRoute.settings.name);
            },
            icon: settingsIcon,
          )
        ],
      ),
      body: Body(
        child: Column(
          children: [
          ],
        ),
      ),
      drawer: ToolsMenu(),
    );
  }
}
