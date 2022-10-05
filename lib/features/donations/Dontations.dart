import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/donations/widgets/dontaionCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dontaions extends StatelessWidget {
  const Dontaions({super.key});

  @override
  Widget build(BuildContext context) {
    return App(
      appbar: NavBar(showBadge: true, title: "Donations", isAdmin: false),
      component: Container(
        alignment: Alignment.topLeft,
        height: ScreenUtil().screenHeight.h + kPadding.h,
        // constraints: BoxConstraints(
        //   minHeight: ScreenUtil().screenHeight + kMargin.h,
        // ),
        padding: EdgeInsets.all(kPadding.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomText(
            text: "Category name",
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => DonationCard(),
              itemCount: 2,
            ),
          ),
        ]),
      ),
      bottomNavBar: BottomNavBar(showBottomNavBar: true),
      isAdmin: false,
    );
  }
}
