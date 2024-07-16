import 'package:flutter/material.dart';

void showSuccessSnackbar(BuildContext context, String text) {
  final SnackBar snackBar = SnackBar(
    content: Text(text),
    backgroundColor: Colors.green,
    behavior: SnackBarBehavior.floating,
    duration: const Duration(seconds: 3),
    action: SnackBarAction(
      label: 'OK',
      textColor: Colors.white,
      onPressed: () {},
    ),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
