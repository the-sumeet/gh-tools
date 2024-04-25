import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'app_route.dart';


class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Not Found'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go Home', style: TextStyle(fontSize: 24),),
          onPressed: () {
            context.goNamed(AppRoute.home.name);
          },
        ),
      ),
    );
  }
}
