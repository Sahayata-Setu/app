import 'package:auto_route/auto_route.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/routes/app.router.gr.dart';
import 'package:donationapp/store/login/login.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VolunteerDrawer extends ConsumerWidget {
  const VolunteerDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    handleLogout() {
      ref.read(loginProvider).logout();
      final router = AutoRouter.of(context);
      router.replaceAll(
        [LoginRoute()],
      );
      // replaceRouteTo("/login", context);
      const snackBar = SnackBar(
        content: Text('Logged Out'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    return Drawer(
      backgroundColor: lightBlueColor,
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 40.w, top: 50.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 28.r,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomText(
                      text: "Hritik Adhikari",
                      fontSize: 20.sp,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 24.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.display_settings),
                    SizedBox(
                      width: 10.w,
                    ),
                    Flexible(
                      child: CustomText(
                        text: "Campaign Details",
                        fontSize: 18.sp,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 24.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.add),
                    SizedBox(
                      width: 10.w,
                    ),
                    Flexible(
                      child: CustomText(
                        text: "Add Campaigns",
                        fontSize: 18.sp,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 24.sp),
                child: GestureDetector(
                  onTap: () {
                    handleLogout();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.logout_outlined),
                      SizedBox(
                        width: 10.w,
                      ),
                      Flexible(
                        child: CustomText(
                          text: "Logout",
                          fontSize: 18.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
