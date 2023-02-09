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
                    //color: Colors.blue,
                    ),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      color: Colors.white,
                    )),
              ),
              ListTile(
                  title: CustomText(
                    text: "Dashboard",
                    fontColor: whiteColor,
                    fontSize: 18.sp,
                  ),
                  onTap: () {
                    // Navigator.pop(context);
                    routeTo("/admin-dashboard", context);
                  }),
              ListTile(
                  title: CustomText(
                    text: "Users",
                    fontColor: whiteColor,
                    fontSize: 18.sp,
                  ),
                  onTap: () {
                    // Navigator.pop(context);
                    routeTo("/viewUsers", context);
                  }),
              ListTile(
                  title: CustomText(
                    text: "Messages",
                    fontColor: whiteColor,
                    fontSize: 18.sp,
                  ),
                  onTap: () {
                    // Navigator.pop(context);
                    routeTo("/homepage", context);
                  }),
              ListTile(
                  title: CustomText(
                    text: "Requests",
                    fontColor: whiteColor,
                    fontSize: 18.sp,
                  ),
                  onTap: () {
                    // Navigator.pop(context);
                    routeTo("/homepage", context);
                  }),
              ListTile(
                  title: CustomText(
                    text: "Profile",
                    fontColor: whiteColor,
                    fontSize: 18.sp,
                  ),
                  onTap: () {
                    // Navigator.pop(context);
                    routeTo("/homepage", context);
                  }),
              ListTile(
                title: CustomText(
                  text: "Logout",
                  fontColor: whiteColor,
                  fontSize: 18.sp,
                ),
                onTap: () {
                  handleLogout();
                },
              ),
              ListTile(
                  title: CustomText(
                    text: "Home",
                    fontColor: whiteColor,
                    fontSize: 18.sp,
                  ),
                  onTap: () {
                    // Navigator.pop(context);
                    routeTo("/homepage", context);
                  })
            ]),
      ),
    );
  }
}
