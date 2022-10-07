import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/horizontal-line/horizontal-line.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/profile/widgets/user-profile-image.dart';
import 'package:donationapp/features/profile/widgets/user-profile-info.dart';
import 'package:donationapp/features/profile/widgets/user-profile-options.dart';
import 'package:donationapp/helpers/custom.toast.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/routes/app.router.gr.dart';
import 'package:donationapp/services/login/login.service.dart';
import 'package:donationapp/store/account-setting/account.setting.store.dart';
import 'package:donationapp/store/login/login.store.dart';
import 'package:donationapp/store/single-user/single-user.store.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserProfile extends ConsumerWidget {
  const UserProfile({super.key});
  // final data;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userId = StorageService.getId();
    ref.watch(initUserDetailsForUpdate);
    // final userDetails = ref.watch(singleUserDataProvider(userId));
    // final userData = data['body'];
    // log("this is from user profile ${userData}");
    handleLogout() {
      ref.read(loginProvider).logout();
      final router = AutoRouter.of(context);
      router.replaceAll([LoginRoute()]);
      const snackBar = SnackBar(
        content: Text('Logged Out'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    return App(
      appbar: NavBar(
        title: "Profile",
        // route: "/homepage",
        showBadge: false,
      ),
      component: Container(
        color: blueBackgroundColor,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Container(
          padding: EdgeInsets.only(
            top: kPadding.h,
            left: kPadding.w + 20.w,
            right: kPadding.w + 20.w,
          ),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text("data"),
              const UserProfileImage(),
              SizedBox(
                height: 10.h,
              ),
              UserProfileInformation(),
              SizedBox(
                height: 20.h,
              ),
              const HorizontalLine(),
              GestureDetector(
                onTap: () {
                  routeTo("/account-settings", context);
                },
                child: const UserProfileOptions(
                  text: "Account Settings",
                  imageName: "profile-setting",
                ),
              ),
              const UserProfileOptions(
                text: "Certificates",
                imageName: "certificate",
              ),
              const UserProfileOptions(
                text: "Donations/Claim",
                imageName: "claim",
              ),
              const UserProfileOptions(
                text: "Change Language",
                imageName: "i-icon",
              ),
              GestureDetector(
                onTap: () {
                  routeTo("/apply-volunteer", context);
                },
                child: const UserProfileOptions(
                  text: "Apply for volunteer",
                  imageName: "volunteer",
                ),
              ),
              GestureDetector(
                onTap: () {
                  handleLogout();
                },
                child: const UserProfileOptions(
                  text: "Logout",
                  imageName: "logout",
                ),
              ),
            ],
          ),
        ),
      ),
      isAdmin: false,
      bottomNavBar: BottomNavBar(showBottomNavBar: false),
    );
  }
}
