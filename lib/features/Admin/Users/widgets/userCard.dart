import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icon.dart';

class UserCard extends StatelessWidget {
  const UserCard(
      {super.key, required this.userLocation, required this.userName});
  final String userName;
  final String userLocation;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: whiteColor,
      child: Container(
        padding: EdgeInsets.all(10.h),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.only(
                right: 10.w,
              ),
              child: LineIcon.userCircle(
                color: blackColor,
                size: 30.h,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: userName,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 3.h,
                ),
                CustomText(
                  text: userLocation,
                  fontSize: 12.sp,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
