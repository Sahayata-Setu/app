import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/User/user-profile-dark-image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icon.dart';

class UserData extends StatelessWidget {
  const UserData({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10.w),
          child: const UserProfileDarkImage(),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomText(
              text: "Tasnimul Hasan Tauhid",
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 2.w),
                  child: LineIcon.mapMarker(size: 14.sp),
                ),
                CustomText(
                  text: "Rajkot",
                  fontSize: 14.sp,
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
