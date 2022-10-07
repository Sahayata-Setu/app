import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/ImageCarousel/customImageOverlay.dart';
import 'package:donationapp/constant/common/ImageCarousel/itemCard.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/donations/widgets/dontaionCard.dart';
import 'package:donationapp/features/donations/widgets/dontaionItemCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dontaions extends StatelessWidget {
  const Dontaions({
    super.key,
  });
  // pass the category name in the arguments
  //final name;
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
        child: Container(
          margin: EdgeInsets.symmetric(vertical: kPadding1.h),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              margin: EdgeInsets.only(bottom: kPadding1.h),
              child: CustomText(
                text: "Category name",
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 250,
                    mainAxisExtent: 270,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) => ItemCard(
                  image: "assets/images/veg.png",
                  btnName: "CLAIM",
                ),
                itemCount: 4,
              ),
            ),
          ]),
        ),
      ),
      bottomNavBar: BottomNavBar(showBottomNavBar: true),
      isAdmin: false,
    );
  }
}
