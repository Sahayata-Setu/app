import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/textfield/CustomTextField.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApplyForVolunteer extends ConsumerWidget {
  const ApplyForVolunteer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return App(
      component: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        color: blueBackgroundColor,
        child: Container(
          padding: EdgeInsets.only(left: kPadding.w, right: kPadding.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.r,
              ),
              Center(
                child: CircleAvatar(
                  radius: 30.r,
                  child: Image.asset(
                    "assets/images/profileicon.png",
                    height: 20.h,
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Name",
                    fontColor: whiteColor,
                    fontSize: 20.sp,
                  ),
                  CustomText(
                    text: "(Enter your name as document)",
                    fontColor: whiteColor,
                    fontSize: 14.sp,
                  ),
                  CustomTextField(
                    label: "Name",
                    name: "name",
                    borderColor: whiteColor,
                    // ref: ref,
                  ),
                  CustomText(
                    text: "Contact No.",
                    fontColor: whiteColor,
                    fontSize: 20.sp,
                  ),
                  CustomTextField(
                    // ref: ref,
                    label: "Contact No.",
                    name: "contactNo",
                    borderColor: whiteColor,
                  ),
                  CustomText(
                    text: "Email",
                    fontColor: whiteColor,
                    fontSize: 20.sp,
                  ),
                  CustomTextField(
                    // ref: ref,
                    label: "Email",
                    name: "contactNo",
                    borderColor: whiteColor,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      appbar: NavBar(
        showBadge: false,
        route: "/homepage",
        title: "Apply for volunteer",
      ),
      bottomNavBar: BottomNavBar(showBottomNavBar: false),
    );
  }
}
