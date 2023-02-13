import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart' as badges;

import 'package:donationapp/constant/common/Icon/custom-icon.dart';
import 'package:donationapp/constant/common/Image/custom-image.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/loading/loadingPage.dart';
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
    log("This is type: $type");
    final data1 = type == "need"
        ? ref.watch(needsByCategoryProvider(
            MyParameter(type: "requests", category: category)))
        : ref.watch(needsByCategoryProvider(
            MyParameter(type: "donations", category: category)));

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
            data1.when(
              data: (dat) {
                final data = dat['body']['count'];
                // log('This is badge data: ${dat}');
                return badges.Badge(
                  badgeStyle: badges.BadgeStyle(badgeColor: blueColor),
                  // badgeColor: blueColor,
                  // toAnimate: false,
                  // borderRadius: BorderRadius.circular(8),
                  badgeContent: data > 9
                      ? Text(
                          // add the number of donations here
                          '9+',
                          style: TextStyle(color: Colors.white),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            // add the number of donations here
                            '${data < 0 ? 0 : data}',
                            // "badge here",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                  child: Container(
                    width: 60.w,
                    height: 60.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: secondaryBlue,
                    ),
                    // child: CustomIcon(icon: icon, color: whiteColor),
                    child: Container(
                      padding: EdgeInsets.all(forPadding),
                      child: CustomImage(
                        imageName: imageName,
                      ),
                    ),
                  ),
                );
              },
              error: (e, st) => CustomText(text: "Error"),
              loading: () => Container(
                width: 60.w,
                height: 60.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: secondaryBlue,
                ),
                // child: CustomIcon(icon: icon, color: whiteColor),
                child: Container(
                  padding: EdgeInsets.all(forPadding),
                  child: CustomImage(
                    imageName: imageName,
                  ),
                ),
              ),
            ),
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
