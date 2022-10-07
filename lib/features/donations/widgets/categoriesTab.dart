import 'dart:developer';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/homepage/widgets/donations/donations.dart';
import 'package:donationapp/features/homepage/widgets/donations/donations.data.dart';
import 'package:donationapp/features/homepage/widgets/heading.dart';
import 'package:donationapp/features/homepage/widgets/needs/needs.dart';
import 'package:donationapp/features/homepage/widgets/needs/needs.data.dart';
import 'package:donationapp/store/homepage/homepage.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesTab extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showDonation = ref.watch(categoriesProvider);
    // bool showDonation = true;
    // log("this is donation type${showDonation}");
    final donationData;
    return Container(
      height: 550.h,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kPadding.w),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(right: 40.w, left: kPadding1.w),
                    child: Column(
                      children: [
                        Heading(
                          header: "Donations",
                          color: showDonation ? blackColor : textColor,
                        ),
                        Container(
                          width: 10.w,
                          height: 10.h,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:
                                  showDonation ? blackColor : backgroundColor),
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    ref.read(categoriesProvider.notifier).state = true;
                  },
                ),
                GestureDetector(
                  child: Column(
                    children: [
                      Heading(
                        header: "Needs",
                        color: showDonation ? textColor : blackColor,
                      ),
                      Container(
                        width: 10.w,
                        height: 10.h,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: showDonation ? backgroundColor : blackColor),
                      )
                    ],
                  ),
                  onTap: () {
                    ref.read(categoriesProvider.notifier).state = false;
                  },
                )
              ],
            ),
          ),
          showDonation ? DonationsData() : NeedsData()
        ],
      ),
    );
  }
}
