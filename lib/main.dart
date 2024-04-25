import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();
  runApp(ProviderScope(child: App()));
}