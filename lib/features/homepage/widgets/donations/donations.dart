import 'dart:developer';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/routes/app.router.gr.dart';
import 'package:donationapp/store/homepage/homepage.store.dart';
import 'package:donationapp/utils/store-service/language.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/homepage/widgets/donations/donationCategoty.dart';
import 'package:donationapp/features/homepage/widgets/donations/donationHomeCards.dart';
import 'package:donationapp/features/homepage/widgets/heading.dart';

class DonationsHome extends ConsumerWidget {
  const DonationsHome(this.donationsData, {super.key});

  final donationsData;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // log("this is for donations home${donationsData}");
    final donationsDetails = donationsData['body'].toList();
    // final donationDetails = ref.watch(donationsOrRequestProvider('donations'));
    // log("This is from donations ${donationsDetails}");
    return Container(
      margin: EdgeInsets.only(top: kPadding.w),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topLeft,
            // height: 200,
            // margin: EdgeInsets.only(left: 25, top: kPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container(
                //   margin:
                //       EdgeInsets.only(left: kPadding.w, bottom: kPadding1.h),
                //   child: Heading(
                //     header: "Donations",
                //   ),
                // ),
                SizedBox(
                  // padding: EdgeInsets.only(right: kPadding.w),
                  height: 100.h,
                  child: Row(
                    // physics: const NeverScrollableScrollPhysics(),
                    // gridDelegate:
                    //     const SliverGridDelegateWithMaxCrossAxisExtent(
                    //         maxCrossAxisExtent: 120),
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DonationsCategory(
                        text: translation(context).food,
                        icon: Icons.food_bank,
                        url: "/donations/Food",
                        badge: 23,
                      ),

                      DonationsCategory(
                        text: translation(context).toys,
                        icon: Icons.toys,
                        url: "/donations/Toys",
                        badge: 2,
                      ),
                      // DonationsCategory(
                      //     text: translation(context).toys, icon: Icons.toys),
                      DonationsCategory(
                        text: translation(context).books,
                        icon: Icons.library_books,
                        badge: 3,
                        url: "/donations/Book",
                      ),
                      DonationsCategory(
                        text: translation(context).clothes,
                        icon: Icons.person,
                        badge: 10,
                        url: "/donations/Clothes",
                      ),
                      //  DonationsCategory(text: "Others", icon: Icons.more_horiz)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: kPadding.w,
                    top: 10.h,
                    bottom: kPadding.h,
                  ),
                  child: CustomText(
                    text: translation(context).latestDonations,
                    fontSize: 15.sp,
                    fontColor: textColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                //Donations cards
                SizedBox(
                    height: 360.h,
                    child: ListView.builder(
                      padding: EdgeInsets.only(left: kPadding),
                      scrollDirection: Axis.horizontal,
                      itemCount: donationsDetails.length,
                      itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.all(10.w),
                        child: Card(
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          elevation: 0,
                          shadowColor: Colors.transparent,
                          child: DonationHomeCards(
                            singleInfo: donationsDetails[index],
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
