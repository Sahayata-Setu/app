import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key, this.color, this.fontSize, this.fontWeight, this.text})
      : super(key: key);
  final color;
  final text;
  final fontSize;
  final fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
