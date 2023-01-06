import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/donations_claim/widgets/forpending.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icon.dart';

class DonationsClaimCard extends StatelessWidget {
  const DonationsClaimCard(
      {super.key, this.categoryName, this.donationStatus, this.donationDate});

  final categoryName;
  final donationStatus;
  final donationDate;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      margin: EdgeInsets.only(
        bottom: 10.h,
      ),
      elevation: 0,
      shadowColor: Colors.transparent,
      child: Container(
        padding: EdgeInsets.all(
          kPadding.w,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: CustomText(
                    text: "${categoryName}",
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                donationStatus == "Pending" ? ForPending() : Text(""),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                CustomText(
                  text: "${donationStatus}",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.normal,
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                CustomText(
                  text: "${donationDate}",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.normal,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
