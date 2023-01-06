import 'dart:developer';

import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';

import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/donations_claim/widgets/donations_claimcard.dart';
import 'package:donationapp/utils/store-service/language.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DonationsClaim extends StatelessWidget {
  const DonationsClaim({super.key});

  @override
  Widget build(BuildContext context) {
    return App(
      component: Container(
        padding: EdgeInsets.all(kPadding.h),
        child: Column(
          children: [
            DonationsClaimCard(
              categoryName: "Hello",
              donationDate: "2022-12-28",
              donationStatus: "Claimed",
            )
          ],
        ),
      ),
      appbar: NavBar(
        title: translation(context).donations_claim,
        // route: "/homepage",
        showBadge: false,
      ),
      bottomNavBar: BottomNavBar(showBottomNavBar: false),
      isAdmin: false,
    );
  }
}
