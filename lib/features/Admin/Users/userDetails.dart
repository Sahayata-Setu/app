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
        padding: EdgeInsets.fromLTRB(20.h, 5.h, 20.h, 20.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: LineIcon.user(
                size: 50.h,
              ),
            ),
            DetailTile(
              title: "Full Name :",
              value: "Tushar Banik",
            ),
            DetailTile(
              title: "User Type :",
              value: "Volunteer",
            ),
            DetailTile(
              title: "Donations :",
              value: "4",
            ),
            DetailTile(
              title: "Benefitted :",
              value: "3",
            ),
            DetailTile(
              title: "Campaigns :",
              value: "0",
            ),
            DetailTile(
              title: "Status :",
              value: "Verified",
            ),
            DetailTile(
              title: "Contact No :",
              value: "9811050468",
            ),
            DetailTile(
              title: "Email :",
              value: "tusharbanik8@gmail.com",
            ),
            DetailTile(
              title: "City :",
              value: "Andaman Nicobar",
            ),
            DetailTile(
              title: "No of Report :",
              value: "2",
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
                text: "Submit",
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
