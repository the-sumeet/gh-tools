import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../constants.dart';

class GistsDrawer extends StatelessWidget {
  const GistsDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        itemCount: Tool.values.length,
        itemBuilder: (BuildContext ctx, int i) {
          return InkWell(
            onTap: () {
              context.pushReplacementNamed(toolsInfo[Tool.values[i]]['screen'],);
            },
            child: ListTile(
              title: Text(
                toolsInfo[Tool.values[i]]['title'],
              ),
            ),
          );
        },
      ),
    );
  }
}
