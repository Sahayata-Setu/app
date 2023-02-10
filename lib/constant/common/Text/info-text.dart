import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoText extends StatelessWidget {
  const InfoText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5.w),
      child: CustomText(
        text: text,
        fontColor: textInfoColor,
        fontSize: 15.sp,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
