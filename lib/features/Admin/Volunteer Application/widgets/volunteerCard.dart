import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/User/user-profile-dark-image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VolunteerCard extends StatelessWidget {
  const VolunteerCard({super.key, required this.name});
  final name;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10.h),
        child: Row(
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
                  text: name,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
