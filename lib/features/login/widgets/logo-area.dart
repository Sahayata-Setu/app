import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoArea extends StatelessWidget {
  const LogoArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
          backgroundColor: Colors.grey,
          radius: 50.r,
          child: CustomText(
            text: "H",
            fontSize: 50.sp,
            fontColor: Colors.black,
          )),
    );
  }
}
