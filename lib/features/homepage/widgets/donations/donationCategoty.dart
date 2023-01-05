import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart';
import 'package:donationapp/constant/common/Icon/custom-icon.dart';
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
      @PathParam('category') this.category,
      required this.icon,
      this.badge});
  final text;
  final icon;
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
            Badge(
              badgeColor: blueColor,
              badgeContent: data1.when(
                data: (data) => Text(
                  // add the number of donations here
                  '${data1.value?['body'].length}',
                  style: TextStyle(color: Colors.white),
                ),
                loading: () => CircleAvatar(
                  backgroundColor: blueColor,
                  radius: 2.r,
                ),
                error: (e, h) => Text("0"),
              ),

              // Text(
              //   // add the number of donations here
              //   '${data1.value?['body'].length}',
              //   style: TextStyle(color: Colors.white),
              // ),
              child: Container(
                width: 50.w,
                height: 50.h,
                child: CustomIcon(icon: icon, color: whiteColor),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: secondaryBlue),
              ),
            ),
            CustomText(
              text: text,
              fontSize: 12.sp,
              fontColor: textColor,
            )
          ],
        ),
      ),
    );
  }
}
