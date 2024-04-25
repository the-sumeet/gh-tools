import 'package:flutter/material.dart';

import '../constants.dart';

class Body extends StatelessWidget {

  final Widget child;

  const Body({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kEdgeInsets16,
      child: child,
    );
  }
}
