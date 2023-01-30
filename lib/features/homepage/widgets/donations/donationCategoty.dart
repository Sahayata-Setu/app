import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart';
import 'package:donationapp/constant/common/Icon/custom-icon.dart';
import 'package:donationapp/constant/common/Image/custom-image.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/store/homepage/homepage.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DonationsCategory extends ConsumerWidget {
  const DonationsCategory(
      {super.key,
      required this.text,
      this.url,
      this.type,
      this.forPadding,
      // @PathParam('category') this.category,
      this.category,
      this.imageName,
      this.badge});

  final text;
  final forPadding;
  // final icon;
  final imageName;
  final category;
  final url;
  final badge;
  final type;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data1 = type == "need"
        ? ref.watch(needsByCategoryProvider(category))
        : ref.watch(donationsByCategoryProvider(category));

    // log("THis is category ${data1.value!['body'].length}");
    return GestureDetector(
      onTap: () {
        routeTo(url, context);
      } //link to donations/category,
      ,
      child: Container(
        // height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Badge(
            //   badgeColor: blueColor,
            //   toAnimate: false,
            //   // borderRadius: BorderRadius.circular(8),
            //   badgeContent: data1.when(
            //     data: (data) {
            //       log("Category data: ${data['body'].length}");
            //       return data['body'].length > 9
            //           ? Text(
            //               // add the number of donations here
            //               '9+',
            //               style: TextStyle(color: Colors.white),
            //             )
            //           : Padding(
            //               padding: const EdgeInsets.all(3.0),
            //               child: Text(
            //                 // add the number of donations here
            //                 ' ${data['body'].length}',
            //                 style: TextStyle(
            //                   color: Colors.white,
            //                   fontSize: 14.sp,
            //                 ),
            //               ),
            //             );
            //     },
            //     error: (e, h) => Center(
            //       child: CustomText(text: "Some error occured"),
            //     ),
            //     loading: () => Container(),
            //   ),
            //   child: Container(
            //     width: 60.w,
            //     height: 60.h,
            //     decoration: BoxDecoration(
            //       shape: BoxShape.circle,
            //       color: secondaryBlue,
            //     ),
            //     // child: CustomIcon(icon: icon, color: whiteColor),
            //     child: Container(
            //       padding: EdgeInsets.all(forPadding),
            //       child: CustomImage(
            //         imageName: imageName,
            //       ),
            //     ),
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.only(
                top: 10.h,
              ),
              child: CustomText(
                text: text,
                fontSize: 16.sp,
                fontColor: blackColor,
                fontWeight: FontWeight.normal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
