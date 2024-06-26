import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RequestTile extends StatelessWidget {
  const RequestTile({
    super.key,
    required this.title,
    required this.donationCategory,
    required this.donerLocation,
  });

  final String title;
  final String donationCategory;
  final String donerLocation;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: whiteColor,
      child: Container(
        padding: EdgeInsets.all(10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: title,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              children: [
                CustomText(
                  text: donationCategory,
                  fontSize: 12.sp,
                  fontColor: blackColor,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: CustomText(
                    text: "|",
                    fontColor: blackColor,
                    fontSize: 14.sp,
                  ),
                ),
                CustomText(
                  text: donerLocation.substring(0),
                  fontSize: 13.sp,
                  fontColor: blackColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
