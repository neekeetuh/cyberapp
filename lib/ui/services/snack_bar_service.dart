import 'package:flutter/material.dart';

class SnackBarService {
  static const errorColor = Colors.red;
  static const defaultColor = Colors.green;

  static Future<void> showSnackBar(BuildContext context, String message, bool isError) async {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: isError ? errorColor : defaultColor,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}