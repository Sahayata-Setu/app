import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserProfileInformation extends StatelessWidget {
  const UserProfileInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          text: "Susan Khadka",
          fontSize: 20.sp,
          fontColor: whiteColor,
        ),
        SizedBox(
          height: 8.h,
        ),
        CustomText(
          text: "susankhadka@gmail.com",
          fontSize: 16.sp,
          fontColor: whiteColor,
        ),
        SizedBox(
          height: 8.h,
        ),
        CustomText(
          text: "+977 98453545634",
          fontSize: 16.sp,
          fontColor: whiteColor,
        ),
      ],
    );
  }
}
