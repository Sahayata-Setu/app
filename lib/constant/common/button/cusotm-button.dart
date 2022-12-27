import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton(
      {super.key,
      required this.child,
      this.height,
      this.width,
      this.color,
      required this.fn});
  final child;
  final width;
  final height;
  final color;
  VoidCallback fn;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: fn,
        child: child,
        style: ElevatedButton.styleFrom(
            // backgroundColor: blueColor,
            // foregroundColor: whiteColor,
            backgroundColor: color ?? blueColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kPadding1)),
            )),
      ),
    );
  }
}
