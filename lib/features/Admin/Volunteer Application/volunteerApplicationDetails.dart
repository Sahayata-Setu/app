import 'package:donationapp/constant/common/NavBar/adminNavBar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/button/primary-custom-botton.dart';
import 'package:donationapp/constant/common/horizontal-line/horizontal-line.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/drawer.dart';
import 'package:donationapp/features/Admin/Users/widgets/detailTile.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VolunteerApplicationDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AdminNavBar(title: "Application Details"),
      ),
      drawer: Menu_Drawer(),
      body: Container(
        margin: EdgeInsets.all(20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailTile(
              title: "Name",
              value: "Tasnimul Hasan Tauhid",
            ),
            DetailTile(
              title: "Contact",
              value: "98xxxxxxxx",
            ),
            DetailTile(
              title: "Email",
              value: "tasnimul@gmail.com",
            ),
            CustomText(
              text: "ID Card",
              fontWeight: FontWeight.w500,
              fontColor: textColor,
              fontSize: 16.sp,
            ),

            // * Display Image here

            Container(
              margin: EdgeInsets.symmetric(vertical: 15.h),
              child: HorizontalLine(
                color: blueColor,
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 15.h),
              child: CustomText(
                text: "Reason for apply",
                fontWeight: FontWeight.w500,
                fontColor: textColor,
                fontSize: 16.sp,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 15.h),
              child: CustomText(
                text:
                    "Switch is a network device which is used to enable the connection establishment and connection termination on the basis of need. Switch is operated on Data link layer. In this packet filtering is available. It is type of full duplex transmission mode and it is also called efficient bridge. ",
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  PrimaryCustomButton(
                    color: blueColor,
                    fn: () {
                      routeTo("", context);
                    },
                    child: CustomText(
                      text: "Accept",
                      fontSize: 16.sp,
                    ),
                  ),
                  PrimaryCustomButton(
                    child: CustomText(
                      text: "Remove",
                      fontSize: 16.sp,
                    ),
                    color: Colors.red,
                    fn: () {
                      routeTo("", context);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
