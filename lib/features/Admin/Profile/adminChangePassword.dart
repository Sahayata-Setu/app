import 'package:donationapp/constant/common/NavBar/adminNavBar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/button/primary-custom-botton.dart';
import 'package:donationapp/constant/common/textfield/CustomTextArea.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminChangePassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AdminNavBar(title: "Change Password"),
      ),
      drawer: Menu_Drawer(),
      body: Container(
        margin: EdgeInsets.all(10.h),
        child: Column(
          children: [
            CustomTextArea(
              text: "Old Password",
              isObscure: true,
              value: "Hello",
              name: "oldPassword",
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5.h),
              child: CustomTextArea(
                text: "New Password",
                isObscure: true,
                name: "newPassword",
              ),
            ),
            CustomTextArea(
              text: "Confirm New Password",
              isObscure: true,
              name: "newPassword",
            ),
            Container(
              margin: EdgeInsets.only(top: 15.h),
              child: PrimaryCustomButton(
                child: CustomText(
                  text: "Submit",
                  fontSize: 16.sp,
                ),
                fn: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
