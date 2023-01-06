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
    showWidget() {
      if (donationStatus == "approved") {
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 16.h,
              width: 16.w,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(5.r)),
              child: Center(
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 16.w,
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            CustomText(
              text: "Approved",
              fontSize: 14.sp,
              fontWeight: FontWeight.normal,
            )
          ],
        );
      } else if (donationStatus == "rejected") {
        return Row(
          children: [
            Container(
              height: 16.h,
              width: 16.w,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(5.r)),
              child: Center(
                child: Icon(
                  Icons.cancel_outlined,
                  color: Colors.white,
                  size: 14.w,
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            CustomText(
              text: "Rejected",
              fontSize: 14.sp,
              fontWeight: FontWeight.normal,
            )
          ],
        );
      } else {
        return Row(
          children: [
            Container(
              height: 16.h,
              width: 16.w,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(5.r)),
              child: Center(
                child: Icon(
                  Icons.pending_actions_outlined,
                  color: Colors.white,
                  size: 14.w,
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            CustomText(
              text: "Pending",
              fontSize: 14.sp,
              fontWeight: FontWeight.normal,
            )
          ],
        );
      }
    }

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
                donationStatus == "pending" ? ForPending() : Text(""),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            // Row(
            //   children: [
            //     CustomText(
            //       text: "${donationStatus}",
            //       fontSize: 14.sp,
            //       fontWeight: FontWeight.normal,
            //     )
            //   ],
            // ),
            showWidget(),
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
