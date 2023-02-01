import 'package:donationapp/constant/common/NavBar/adminNavBar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/drawer.dart';
import 'package:donationapp/features/Admin/Users/widgets/detailTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icon.dart';

class UserDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AdminNavBar(title: "Users Details"),
      ),
      drawer: Menu_Drawer(),
      body: Container(
        padding: EdgeInsets.fromLTRB(10.h, 5.h, 20.h, 10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: LineIcon.user(
                size: 50.h,
              ),
            ),
            Card(
              // margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.h),
              child: Container(
                padding: EdgeInsets.all(10.h),
                height: MediaQuery.of(context).size.height * 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DetailTile(
                      title: "Full Name",
                      value: "Tushar Banik",
                    ),
                    DetailTile(title: "User Type", value: "Volunteer"),
                    DetailTile(title: "Status", value: "Verified"),
                    DetailTile(title: "Contact", value: "98xxxxxxxx"),
                    DetailTile(title: "Email", value: "tushar@gmail.com"),
                    DetailTile(title: "Donations", value: "4"),
                    DetailTile(title: "Benefitted", value: "3"),
                    DetailTile(title: "Campaign", value: "0"),
                    DetailTile(title: "City", value: "Rajkot"),
                    DetailTile(title: "Date", value: "2023/01/23"),
                    DetailTile(title: "No of Report", value: "2"),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(blueColor),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 5.w,
                  ),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                ),
              ),
              child: CustomText(
                text: "Remove",
                fontColor: whiteColor,
                fontSize: 16.sp,
              ),
            )
          ],
        ),
      ),
    );
  }
}
