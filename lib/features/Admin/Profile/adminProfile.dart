import 'package:donationapp/constant/common/NavBar/adminNavBar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/button/primary-custom-botton.dart';
import 'package:donationapp/constant/common/textfield/CustomTextArea.dart';
import 'package:donationapp/constant/common/textfield/CustomTextField.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/drawer.dart';
import 'package:donationapp/features/Admin/Profile/widget/input-area-section.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AdminNavBar(title: "Profile"),
      ),
      drawer: Menu_Drawer(),
      body: Container(
        margin: EdgeInsets.all(10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextArea(
              text: "Full Name",
              value: "Tasnimul",
            ),
            CustomTextArea(
              text: "Phone No:",
              value: "98xxxxxxxx",
              isPhoneNo: true,
            ),
            CustomTextArea(
              text: "Email",
              value: "tasnimul@gmail.com",
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                top: 15.h,
                bottom: 15.h,
              ),
              child: PrimaryCustomButton(
                child: CustomText(
                  text: "Submit",
                  fontSize: 16.sp,
                ),
                fn: () {
                  routeTo("", context);
                },
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: MaterialButton(
                  onPressed: () => {
                    routeTo(
                      "/admin-change-password",
                      context,
                    ),
                  },
                  child: CustomText(
                    text: "Change Password ?",
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
