import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryCustomButton extends StatelessWidget {
  PrimaryCustomButton(
      {super.key, required this.child, required this.fn, this.color});
  final child;
  final color;
  VoidCallback fn;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: color == null
            ? MaterialStateProperty.all<Color>(blueColor)
            : MaterialStateProperty.all<Color>(color),
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 10.w,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.r),
          ),
        ),
      ),
      child: child,
    );
  }
}
