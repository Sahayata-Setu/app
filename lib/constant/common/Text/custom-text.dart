import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      this.fontColor,
      this.fontSize,
      this.fontWeight,
      this.textOverFlow,
      required this.text});
  final String text;
  final fontColor;
  final fontSize;
  final fontWeight;
  final textOverFlow;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: fontColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
          overflow: textOverFlow),
    );
  }
}
