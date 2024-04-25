import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gh_tools/widgets/components.dart';

import '../constants.dart';

class TextFieldWidget extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final TextInputType textInputType;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final bool expanded;
  final int? maxLines;
  final int? minLines;
  final bool readOnly;

  const TextFieldWidget(
      {super.key,
      this.hintText,
      this.labelText,
      this.textInputType = TextInputType.text,
      this.controller,
      this.onChanged,
      this.expanded = false,
      this.minLines = 1,
      this.maxLines,
      this.readOnly = false});

  @override
  Widget build(BuildContext context) {

    TextField textField = TextField(
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        enabledBorder: readOnly ? null : outlineInputBorder(context),
        border: readOnly ? outlineInputBorderNone(context) : outlineInputBorder(context),
      ),
      keyboardType: textInputType,
      controller: controller,
      onChanged: onChanged,
      expands: expanded,
      minLines: expanded ? null : minLines,
      maxLines: expanded ? null : maxLines,
      textAlign: TextAlign.start,
      textAlignVertical: TextAlignVertical.top,
      readOnly: readOnly,
    );

    if (readOnly) {
      return Card(
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius8,
          side: BorderSide(
              color: Theme.of(context).colorScheme.primary, width: 3)
        ),
        child: textField,
      );
    } else {
      return textField;
    }


  }
}
