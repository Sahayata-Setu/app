import 'package:donationapp/constant/common/NavBar/adminNavBar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/User/user-profile-dark-image.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RequestDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AdminNavBar(title: "Requests"),
      ),
      drawer: Menu_Drawer(),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.h),
        child: Column(
          children: [
            Container(
              height: 40.h,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10.w),
                    child: UserProfileDarkImage(),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomText(
                        text: "Tasnimul Hasan Tauhid",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      CustomText(
                        text: "Rajkot",
                        fontSize: 14.sp,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
