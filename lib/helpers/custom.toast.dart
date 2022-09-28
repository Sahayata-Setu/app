import 'package:flutter/material.dart';

class CustomScaffoldMessenger {
  CustomScaffoldMessenger.error(String text, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      behavior: SnackBarBehavior.floating,
      content: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 14),
      ),
      backgroundColor: Colors.redAccent,
    ));
  }
  CustomScaffoldMessenger.info(String text, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      behavior: SnackBarBehavior.floating,
      content: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 14),
      ),
      backgroundColor: const Color(0xff212529),
      // duration: const Duration(milliseconds: 1000),
    ));
  }
}
