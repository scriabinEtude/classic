import 'package:flutter/material.dart';

class AppSnackBar extends SnackBar {
  AppSnackBar({
    super.key,
    required String text,
  }) : super(
          content: Text(text),
          behavior: SnackBarBehavior.floating,
        );
}
