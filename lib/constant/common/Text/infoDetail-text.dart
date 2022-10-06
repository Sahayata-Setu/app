import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoDetailText extends StatelessWidget {
  const InfoDetailText({super.key, required this.text, this.textOverFlow});
  final String text;
  final textOverFlow;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.w),
      child: CustomText(
          text: text,
          fontColor: blackColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          textOverFlow: textOverFlow),
    );
  }
}
