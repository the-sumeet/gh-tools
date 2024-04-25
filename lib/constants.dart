

import 'package:flutter/material.dart';
import 'package:gh_tools/freatures/gists/presentation/gists_screen.dart';
import 'package:gh_tools/routes/app_route.dart';

const kHeight8 = SizedBox(height: 8);
const kHeight16 = SizedBox(height: 16);
const kWidth16 = SizedBox(width: 16);
const kWidth8 = SizedBox(width: 8);
const kEdgeInsets16 = EdgeInsets.all(16.0);
BorderRadius borderRadius8 = BorderRadius.circular(8);

// Icons
const settingsIcon = Icon(Icons.settings);
const saveIcon = Icon(Icons.save);

// Tools list
enum Tool {
  // notes,
  gists
}

Map<Tool, dynamic> toolsInfo = {
  Tool.gists: {
    "title": "Gists",
    "screen": AppRoute.gists.name
  },

};