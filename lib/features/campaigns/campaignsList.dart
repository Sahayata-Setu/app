import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/ImageCarousel/ImageOverlay.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/campaigns/widgets/campaignCards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CampaignsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return App(
      appbar: NavBar(showBadge: false, isAdmin: false, title: "Campaigns"),
      component: Container(
        padding: EdgeInsets.all(kPadding.h),
        height: ScreenUtil().screenHeight + kPadding.h,
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => CampaignCards(
                  image: "assets/images/veg.png",
                  location: "Rajkot",
                  title: "Save the children",
                )),
      ),
      bottomNavBar: BottomNavBar(showBottomNavBar: true),
      isAdmin: false,
    );
  }
}