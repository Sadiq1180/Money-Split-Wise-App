import 'package:flutter/material.dart';
import 'package:project_core/shared/navigation/navigator_key.dart';

class AppSnackBar {
  static showSnackBar(String message, {BuildContext? context}) {
    closeSnackBar();
    ScaffoldMessenger.of(context ?? appContext).showSnackBar(
      SnackBar(content: Text(message), duration: const Duration(seconds: 1)),
    );
  }

  static closeSnackBar() {
    ScaffoldMessenger.of(appContext).removeCurrentSnackBar();
  }
}
