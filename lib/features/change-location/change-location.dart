import 'dart:developer';

import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/apply-for-volunteer/widget/text-fields-area-volunteer.dart';
import 'package:donationapp/features/change-location/widgets/button-area-change-password.dart';
import 'package:donationapp/features/change-location/widgets/text-fields-area-change-password.dart';
import 'package:donationapp/features/change-password/widgets/button-area-change-password.dart';
import 'package:donationapp/features/change-password/widgets/text-fields-area-change-password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangeLocation extends ConsumerWidget {
  const ChangeLocation({super.key});

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
              TextFieldAreaChangeLocation(),
              ButtonAreaChangeLocation(),
            ],
          ),
        ),
      ),
      appbar: const NavBar(
        isMainPage: false,
        showBadge: false,
        // route: "/homepage",
        title: "Change Location",
      ),
      isAdmin: false,
      bottomNavBar: BottomNavBar(showBottomNavBar: false),
    );
  }
}
