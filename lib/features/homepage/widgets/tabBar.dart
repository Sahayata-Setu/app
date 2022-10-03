import 'package:donationapp/features/homepage/widgets/Donations/Dontations.dart';
import 'package:donationapp/features/homepage/widgets/Donations/dontaionCard.dart';
import 'package:donationapp/features/homepage/widgets/Needs/Needs.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/homepage/widgets/dropdown.dart';
import '../../../constant/common/Text/custom-text.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with TickerProviderStateMixin {
  @override
  Widget build(
    BuildContext context,
  ) {
    final TabController tabBarController =
        TabController(length: 3, vsync: this);

    return Expanded(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            child: TabBar(
              controller: tabBarController,
              indicatorSize: TabBarIndicatorSize.label,
              //indicator: ,
              tabs: [
                CustomText(
                  text: "DONATIONS",
                  fontColor: blackColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
                CustomText(
                  text: "NEED",
                  fontColor: blackColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
                CustomText(
                  text: "Categories",
                  fontColor: blackColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
                // CategoriesDropDown(
                //   ref: ref,
                // ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                left: kPadding.w,
                right: kPadding.w,
              ),
              // height: 400,
              child: TabBarView(
                  controller: tabBarController,
                  children: [Dontaions(), Needs(), Text("others")]),
            ),
          )
        ],
      ),
    );
  }
}
