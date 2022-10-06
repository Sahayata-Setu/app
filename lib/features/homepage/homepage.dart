import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/donations/widgets/categoriesTab.dart';
import 'package:donationapp/features/homepage/widgets/campaigns/campaign.dart';
import 'package:donationapp/features/homepage/widgets/tabBar.dart';
import 'package:donationapp/features/homepage/widgets/needs/needs.dart';
import 'package:donationapp/utils/store-service/store.service.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends ConsumerWidget {
  const HomePage(this.data, {super.key});
  final data;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final token = StorageService.getToken();
    // log("this id from${StorageService.getToken()}");
    // log("this is token${ref.watch(categoriesProvider)}");
    // final val = AutoRouter.of(context).current.name;
    // log("this is from home page${data['body']}");
    final post = data['body'];
    // var choosenValue;
    final getUserId = StorageService.getId();
    log("this id from${getUserId}");

    return App(
      component: Container(
        //height: ,
        margin: EdgeInsets.symmetric(vertical: kPadding),
        // padding: EdgeInsets.all(kPadding),
        color: backgroundColor,
        //  height: ScreenUtil().screenHeight + kPadding,
        child: Column(
          children: [
            Campaigns(),
            CategoriesTab(post)
            //CustomTabBar()
            // DonationsHome(), NeedsHome()
          ],
        ),
      ),
      //),
      appbar: const NavBar(
        title: "HOME",
        showBadge: true,
      ),
      isAdmin: false,
      bottomNavBar: BottomNavBar(showBottomNavBar: true),
    );
  }
}
