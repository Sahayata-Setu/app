import 'dart:developer';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/routes/app.router.gr.dart';
import 'package:donationapp/store/homepage/homepage.store.dart';
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
                  child: GridView(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 120),
                    children: const [
                      DonationsCategory(
                          text: "Foods",
                          icon: Icons.food_bank,
                          url: "/donations/:category"),
                      DonationsCategory(
                        text: "Toys",
                        icon: Icons.toys,
                        url: "/donations/:category",
                      ),
                      DonationsCategory(
                          text: "Books",
                          icon: Icons.library_books,
                          url: "/donations/:category"),
                      DonationsCategory(
                          text: "Clothes",
                          icon: Icons.person,
                          url: "/donations/:category"),
                      //  DonationsCategory(text: "Others", icon: Icons.more_horiz)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: kPadding.w, top: 10.h),
                  child: CustomText(
                    text: "Latest Dontations",
                    fontSize: 15.sp,
                    fontColor: textColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                //Donations cards
                SizedBox(
                    height: 300.h,
                    child: ListView.builder(
                      padding: EdgeInsets.only(left: kPadding),
                      scrollDirection: Axis.horizontal,
                      itemCount: donationsDetails.length,
                      itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.all(10.w),

                        // height: 200.0,
                        // width: 150,
                        child: Container(
                          decoration: BoxDecoration(
                              color: backgroundColor,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    offset: const Offset(0, 6),
                                    blurRadius: 11.0,
                                    spreadRadius: 0)
                              ]),
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
