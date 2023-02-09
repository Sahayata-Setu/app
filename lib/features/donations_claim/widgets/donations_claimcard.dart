import 'dart:convert';
import 'dart:developer';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/donations_claim/widgets/forpending.dart';
import 'package:donationapp/helpers/convertToJsonObject.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icon.dart';

class DonationsClaimCard extends StatelessWidget {
  const DonationsClaimCard(
      {super.key,
      this.donation,
      this.donationDate,
      this.donorId,
      this.recieverId,
      this.donor_status,
      this.reciever_status,
      this.donor_name,
      this.reciever_name,
      this.donationPostId});

  final donation;
  final donationPostId;
  final donationDate;
  final donorId;
  final donor_name;
  final reciever_name;
  final recieverId;
  final donor_status;
  final reciever_status;
  @override
  Widget build(BuildContext context) {
    final userId = StorageService.getId();
    late String userType;

    if (donorId == userId) {
      userType = "donor";
    } else {
      userType = "reciever";
    }

    log("Donations: ${userType}");
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
                    text: "${donation}",
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ForPending(
                  userType: userType,
                  donationId: donationPostId,
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: CustomText(
                    text: "Donor Status:",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                CustomText(
                  text: "${donor_status}",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
                Flexible(
                  child: CustomText(
                    text: "Reciever Status:",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                CustomText(
                  text: "${reciever_status}",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                )
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Donor name:",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.normal,
                ),
                Flexible(
                  child: CustomText(
                    text: "${donor_name}",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Reciever name:",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.normal,
                ),
                Flexible(
                  child: CustomText(
                    text: "${reciever_name}",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
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
            // showWidget(),
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
