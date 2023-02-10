import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/Admin/Users/widgets/detailTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminInfoCard extends StatelessWidget {
  const AdminInfoCard({super.key, this.dashboardDats, this.cardTitle});
  final dashboardDats;
  final cardTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330.w,
      margin: EdgeInsets.only(right: 5.w, left: 5.w),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        color: Color(0xff710084),
        child: Padding(
          padding: EdgeInsets.all(10.h),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 5.h,
                ),
                child: CustomText(
                  text: "$cardTitle",
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w800,
                  fontColor: whiteColor,
                ),
              ),
              DetailTile(
                title: "Total Requests",
                value: "${dashboardDats["requests"]["approved"]}",
                fontColor: whiteColor,
              ),
              DetailTile(
                title: "Total Donations",
                value: "${dashboardDats["donations"]["approved"]}",
                fontColor: whiteColor,
              ),
              DetailTile(
                title: "Total Volunteers",
                value: "${dashboardDats["requests"]["approved"]}",
                fontColor: whiteColor,
              ),
              DetailTile(
                title: "Total Users",
                value: "${dashboardDats["users"]["verified"]}",
                fontColor: whiteColor,
              ),
              DetailTile(
                title: "Total Campaigns",
                value: "2",
                fontColor: whiteColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
