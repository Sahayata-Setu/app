import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonAreaAccount extends StatelessWidget {
  const ButtonAreaAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 30.h,
        width: 100.w,
        decoration: BoxDecoration(
          color: lightBlueColor,
          borderRadius: BorderRadius.circular(18.r),
        ),
        child: Center(
          child: CustomText(
            text: "Sumbit",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
