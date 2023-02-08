// ignore_for_file: prefer_const_constructors

import 'package:auto_route/auto_route.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/routes/app.router.gr.dart';
import 'package:donationapp/store/login/login.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icon.dart';

class Menu_Drawer extends ConsumerWidget {
  const Menu_Drawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    handleLogout() {
      ref.read(loginProvider).logout();
      final router = AutoRouter.of(context);
      router.replaceAll([LoginRoute()]);
      // replaceRouteTo("/login", context);
      const snackBar = SnackBar(
        content: Text('Logged Out'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    return Drawer(
      backgroundColor: blueColor,
      child: Container(
        padding: EdgeInsets.only(
          left: kPadding.w + 20.w,
        ),
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  // color: Colors.blue,
                  ),
              child: InkWell(
                child: LineIcon.times(
                  color: whiteColor,
                  size: 30.h,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              // * Previous Code is below

              // child: IconButton(
              //   onPressed: () {
              //     Navigator.pop(context);
              //   },
              //   icon: Icon(Icons.close),
              // ),

              // * Upto here
            ),

            // ****************************
            // This is for temporary stage only
            // ****************************

            // ListTile(
            //     title: CustomText(
            //       text: "User Home",
            //       fontColor: whiteColor,
            //       fontSize: 18.sp,
            //     ),
            //     onTap: () {
            //       Navigator.pop(context);
            //       routeTo("/homepage", context);
            //     }),

            // ****************************
            // Todo: Above ListTile should be removed
            // ****************************

            ListTile(
                leading: Image.asset(
                  "assets/images/dashboard.png",
                  height: 18.h,
                ),
                title: CustomText(
                  text: "Dashboard",
                  fontColor: whiteColor,
                  fontSize: 18.sp,
                ),
                onTap: () {
                  Navigator.pop(context);
                  routeTo("/new-admin-dashboard", context);
                }),
            ListTile(
                leading: Image.asset(
                  "assets/images/user.png",
                  height: 18.h,
                ),
                title: CustomText(
                  text: "Users",
                  fontColor: whiteColor,
                  fontSize: 18.sp,
                ),
                onTap: () {
                  Navigator.pop(context);
                  routeTo("/view-user", context);
                }),
            ListTile(
                leading: Image.asset(
                  "assets/images/message.png",
                  height: 18.h,
                ),
                title: CustomText(
                  text: "Messages",
                  fontColor: whiteColor,
                  fontSize: 18.sp,
                ),
                onTap: () {
                  Navigator.pop(context);
                  // Todo: Insert route of admin messages
                  // routeTo("", context);
                }),
            ListTile(
              leading: Image.asset(
                "assets/images/donation.png",
                height: 16.h,
              ),
              title: CustomText(
                text: "Donations",
                fontColor: whiteColor,
                fontSize: 18.sp,
              ),
              onTap: () {
                Navigator.pop(context);
                routeTo("/donations-list", context);
              },
            ),
            ListTile(
              // Icon not defined yet
              leading: Image.asset(
                "assets/images/requests.png",
                height: 16.h,
              ),
              title: CustomText(
                text: "Requests",
                fontColor: whiteColor,
                fontSize: 18.sp,
              ),
              onTap: () {
                Navigator.pop(context);
                routeTo("/requests", context);
              },
            ),
            ListTile(
              leading: Image.asset(
                "assets/images/application.png",
                height: 16.h,
              ),
              title: CustomText(
                text: "Applications",
                fontColor: whiteColor,
                fontSize: 18.sp,
              ),
              onTap: () {
                Navigator.pop(context);
                routeTo("/view-volunteer-applications", context);
              },
            ),
            ListTile(
              leading: Image.asset(
                "assets/images/user.png",
                height: 16.h,
              ),
              title: CustomText(
                text: "Profile",
                fontColor: whiteColor,
                fontSize: 18.sp,
              ),
              onTap: () {
                Navigator.pop(context);
                routeTo("/admin-profile", context);
              },
            ),
            ListTile(
              leading: Image.asset(
                "assets/images/logout.png",
                height: 16.h,
              ),
              title: CustomText(
                text: "Logout",
                fontColor: whiteColor,
                fontSize: 18.sp,
              ),
              onTap: () {
                handleLogout();
              },
            ),
          ],
        ),
      ),
    );
  }
}
