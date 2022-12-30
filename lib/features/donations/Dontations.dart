import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/ImageCarousel/customImageOverlay.dart';
import 'package:donationapp/constant/common/ImageCarousel/itemCard.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/loading/loadingPage.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/donations/widgets/dontaionCard.dart';
import 'package:donationapp/features/donations/widgets/dontaionItemCard.dart';
import 'package:donationapp/store/homepage/homepage.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dontaions extends ConsumerWidget {
  const Dontaions({super.key, @PathParam('category') this.category});
  // pass the category name in the arguments
  final category;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(donationsByCategoryProvider(category));
    // log("THis is data from single category: ${data['body']}");
    return App(
      appbar: NavBar(
        showBadge: true,
        title: "Donations",
        isAdmin: false,
        isMainPage: false,
      ),
      component: data.when(
          data: (data) {
            // log("THis is food category ${data}");

            return Container(
              alignment: Alignment.topLeft,
              height: ScreenUtil().screenHeight.h + kPadding.h,
              // constraints: BoxConstraints(
              //   minHeight: ScreenUtil().screenHeight + kMargin.h,
              // ),
              padding: EdgeInsets.all(kPadding.w),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: kPadding1.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: kPadding1.h),
                        child: CustomText(
                          text: "${category}",
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Expanded(
                        child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 250,
                                  mainAxisExtent: 270,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10),
                          itemBuilder: (context, index) => ItemCard(
                            cardType: "donations",
                            data: data['body'][index],
                            image: data['body'][index]['images'][0] ??
                                "assets/images/veg.png",
                            id: data['body'][index]['_id'],
                            btnName: "CLAIM",
                          ),
                          itemCount: data['body'].length,
                        ),
                      ),
                    ]),
              ),
            );
          },
          error: (h, e) {
            return Text("Error Occoured");
          },
          loading: () => LoadingPage()),
      bottomNavBar: BottomNavBar(showBottomNavBar: true),
      isAdmin: false,
    );
  }
}
