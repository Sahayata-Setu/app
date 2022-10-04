import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizontalLine extends StatelessWidget {
  const HorizontalLine({super.key, this.color});
  final color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.h,
      width: double.infinity,
      color: color ?? Colors.grey,
    );
  }
}
