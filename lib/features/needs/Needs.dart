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

class Needs extends ConsumerWidget {
  const Needs({super.key, @PathParam('category') this.category});
  // pass the category name in the arguments
  final category;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data1 = ref.watch(needsByCategoryProvider(category));
    return App(
      appbar: NavBar(showBadge: true, title: "Needs", isAdmin: false),
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
            Padding(
              padding: EdgeInsets.only(bottom: kPadding1.h),
              child: CustomText(
                text: "${category}",
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            data1.when(
              data: (data) {
                // log("This is from category: ${data['body'][0]['_id']}");

                return Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 250,
                            mainAxisExtent: 270,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                    itemBuilder: (context, index) => ItemCard(
                      data: data['body'][index],
                      // image: data['body'][index]['images'].length == null ??
                      //     "assets/images/veg.png",
                      image:
                          // data['body']['images'].isEmpty
                          "https://www.ncenet.com/wp-content/uploads/2020/04/No-image-found.jpg",
                      cardType: "need",
                      // : data['body']['images'][0],
                      id: data['body'][index]['_id'],
                      btnName: "DONATE",
                    ),
                    itemCount: data['body'].length,
                  ),
                );
              },
              error: (error, stackTrace) => Center(
                child: Text("Something went wrong!!"),
              ),
              loading: () => LoadingPage(),
            ),

            // Expanded(
            //   child: GridView.builder(
            //     gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            //         maxCrossAxisExtent: 250,
            //         mainAxisExtent: 270,
            //         crossAxisSpacing: 10,
            //         mainAxisSpacing: 10),
            //     itemBuilder: (context, index) => ItemCard(
            //       image: "assets/images/veg.png",
            //       btnName: "DONATE",
            //     ),
            //     itemCount: 1,
            //   ),
            // ),
          ]),
        ),
      ),
      bottomNavBar: BottomNavBar(showBottomNavBar: true),
      isAdmin: false,
    );
  }
}
