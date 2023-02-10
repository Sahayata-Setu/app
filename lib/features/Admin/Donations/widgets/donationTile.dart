import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class DonationTile extends StatelessWidget {
  const DonationTile({
    super.key,
    required this.donationCategory,
    // required this.donerName,
    this.donationTitle,
    required this.donerLocation,
    required this.status,
  });

  // final String donerName;
  final donationTitle;

  final String donationCategory;
  final String donerLocation;
  final String status;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: whiteColor,
      child: Container(
        padding: EdgeInsets.all(10.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: donationTitle,
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
                      text: donerLocation,
                      fontSize: 13.sp,
                      fontColor: blackColor,
                    ),
                  ],
                ),
              ],
            ),
            if (status == "pending")
              Row(
                children: [
                  LineIcon(LineIcons.tasks, color: Colors.yellow),
                  SizedBox(
                    width: 5.w,
                  ),
                  CustomText(
                    text: "Pending",
                    fontSize: 12.sp,
                    fontColor: blackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            if (status == "approved")
              Row(
                children: [
                  LineIcon(LineIcons.thumbsUp, color: Colors.green),
                  SizedBox(
                    width: 5.w,
                  ),
                  CustomText(
                    text: "Approved",
                    fontSize: 12.sp,
                    fontColor: blackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            if (status == "rejected")
              Row(
                children: [
                  LineIcon(LineIcons.timesCircle, color: Colors.red),
                  SizedBox(
                    width: 5.w,
                  ),
                  CustomText(
                    text: "Rejected",
                    fontSize: 12.sp,
                    fontColor: blackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            if (status == "donated")
              Row(
                children: [
                  LineIcon(LineIcons.checkSquare, color: Colors.green),
                  SizedBox(
                    width: 5.w,
                  ),
                  CustomText(
                    text: "Donated",
                    fontSize: 12.sp,
                    fontColor: blackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
