

import 'package:flutter/material.dart';

import '../constants.dart';

OutlineInputBorder outlineInputBorder(BuildContext context) {
  return OutlineInputBorder(
    borderRadius:borderRadius8,
    borderSide: BorderSide(
        color: Theme.of(context).colorScheme.primary, width: 3),
  );
}

OutlineInputBorder outlineInputBorderNone(BuildContext context) {
  return OutlineInputBorder(
    borderRadius:borderRadius8,
    borderSide: const BorderSide(),
  );
}

