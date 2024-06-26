import 'dart:developer';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/homepage/widgets/donations/donations.dart';
import 'package:donationapp/features/homepage/widgets/donations/donations.data.dart';
import 'package:donationapp/features/homepage/widgets/heading.dart';
import 'package:donationapp/features/homepage/widgets/needs/needs.dart';
import 'package:donationapp/features/homepage/widgets/needs/needs.data.dart';
import 'package:donationapp/store/homepage/homepage.store.dart';
import 'package:donationapp/utils/store-service/language.store.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesTab extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showDonation = ref.watch(categoriesProvider);
    // bool showDonation = true;
    // log("this is donation type${showDonation}");
    final userType = StorageService.getuserType();
    final donationData;
    return Container(
      // height: 550.h,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kPadding.w),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(right: 50.w, left: kPadding1.w),
                    child: Column(
                      children: [
                        Heading(
                          header: translation(context).donation,
                          color: showDonation ? blackColor : textColor,
                        ),
                        Container(
                          width: 10.w,
                          height: 10.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: showDonation ? blackColor : backgroundColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    ref.read(categoriesProvider.notifier).state = true;
                  },
                ),
                userType == "ngo"
                    ? SizedBox()
                    : GestureDetector(
                        child: Column(
                          children: [
                            Heading(
                              header: translation(context).need,
                              color: showDonation ? textColor : blackColor,
                            ),
                            Container(
                              width: 10.w,
                              height: 10.h,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: showDonation
                                      ? backgroundColor
                                      : blackColor),
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
          // if (showDonation == true) DonationsHome() else NeedsHome()

          showDonation ? DonationsHome() : NeedsHome()
        ],
      ),
    );
  }
}
