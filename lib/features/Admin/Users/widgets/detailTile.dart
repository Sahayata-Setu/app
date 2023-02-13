import "dart:ui";

import "package:donationapp/constant/common/Text/custom-text.dart";
import "package:donationapp/constant/kconstant.dart";
import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class DetailTile extends StatelessWidget {
  const DetailTile(
      {super.key, required this.title, required this.value, this.fontColor});

  final String title;
  final String value;
  final fontColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: title,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            fontColor: fontColor ?? textColor,
          ),
          SizedBox(width: 10.w),
          Flexible(
            child: CustomText(
              text: value,
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
              fontColor: fontColor ?? textColor,
            ),
          )
        ],
      ),
    );
  }
}
