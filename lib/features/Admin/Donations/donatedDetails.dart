import 'package:donationapp/constant/common/NavBar/adminNavBar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/drawer.dart';
import 'package:donationapp/features/Admin/Users/widgets/detailTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DonatedDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AdminNavBar(title: "Donation Details"),
      ),
      drawer: Menu_Drawer(),
      body: Container(
        child: Column(
          children: [
            // Doners Section
            Container(
              margin: EdgeInsets.only(top: 20.h, bottom: 10.h),
              alignment: Alignment.center,
              child: CustomText(
                text: "Doner Details",
                fontSize: 16.sp,
                fontWeight: FontWeight.w800,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 20.h),
              child: Container(
                padding: EdgeInsets.all(10.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DetailTile(
                      title: "Full Name",
                      value: "Tasnimul Hasan Tauhid",
                    ),
                    DetailTile(title: "Email", value: "thtauhid@gmail.com"),
                    DetailTile(title: "Contact", value: "98xxxxxxxx"),
                    DetailTile(title: "City", value: "Rajkot"),
                    DetailTile(title: "Date", value: "2023/01/23"),
                  ],
                ),
              ),
            ),
            // Beneficiary section
            Container(
              margin: EdgeInsets.only(top: 20.h, bottom: 10.h),
              alignment: Alignment.center,
              child: CustomText(
                text: "Beneficiary Details",
                fontSize: 16.sp,
                fontWeight: FontWeight.w800,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 20.h),
              child: Container(
                padding: EdgeInsets.all(10.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DetailTile(
                      title: "Full Name",
                      value: "Tasnimul Hasan Tauhid",
                    ),
                    DetailTile(title: "Email", value: "thtauhid@gmail.com"),
                    DetailTile(title: "Contact", value: "98xxxxxxxx"),
                    DetailTile(title: "City", value: "Rajkot"),
                    DetailTile(title: "Date", value: "2023/01/23"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
