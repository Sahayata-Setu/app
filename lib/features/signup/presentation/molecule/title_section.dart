import 'package:expensetracker/features/signup/presentation/atoms/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/arrow_back.png",
          height: 16.h,
        ),
        SizedBox(
          width: 100.w,
        ),
        CustomText(
          text: "Sign Up",
          fontWeight: FontWeight.w600,
          fontSize: 18.sp,
        )
      ],
    );
  }
}
