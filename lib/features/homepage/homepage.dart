import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/homepage/widgets/dontaionCard.dart';
import 'package:donationapp/features/homepage/widgets/dropdown.dart';
import 'package:donationapp/features/homepage/widgets/tabBar.dart';
import 'package:donationapp/store/homepage/homepage.store.dart';
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
    return App(
      component: Container(
        color: backgroundColor,
        // height: MediaQuery.of(context).size.height,
        child: Column(
            children: post.map<Widget>((e) {
          return DonationCard();
        }).toList()
            // CustomTabBar(),
            // DonationCard()

            ),
      ),
      //),
      appbar: const NavBar(
        title: "HOME",
        showBadge: true,
      ),
      bottomNavBar: BottomNavBar(showBottomNavBar: true),
    );
  }
}
