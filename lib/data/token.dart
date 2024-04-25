import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'token.g.dart';

@riverpod
class Token extends _$Token {
  @override
  String? build() {
    return "";
  }

  void set(String token) {
    debugPrint("Setting token to $token");
    state = token;
  }
}