import 'dart:developer';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/loading/loadingPage.dart';
import 'package:donationapp/features/homepage/widgets/donations/donations-homecard-shimmer.dart';
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
  const DonationsHome({super.key});

  // final donationsData;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // log("this is for donations home${donationsData}");
    // final donationsDetails = donationsData['body'].toList();
    final data = ref.watch(donationsOrRequestProvider("donation"));

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
                        imageName: "foods",
                        url: "/donations/Food",
                        badge: 23,
                        forPadding: 15.0,
                        type: "donations",
                        category: "Food",
                        // ca
                      ),
                      DonationsCategory(
                        text: translation(context).toys,
                        imageName: "toys",
                        url: "/donations/Toys",
                        badge: 2,
                        forPadding: 10.0,
                        type: "donations",
                        category: "Toys",
                      ),
                      DonationsCategory(
                        text: translation(context).books,
                        imageName: "books",
                        badge: 3,
                        url: "/donations/Book",
                        forPadding: 15.0,
                        type: "donations",
                        category: "Books",
                      ),
                      DonationsCategory(
                        text: translation(context).clothes,
                        imageName: "clothes",
                        badge: 10,
                        url: "/donations/Clothes",
                        forPadding: 15.0,
                        type: "donations",
                        category: "Clothes",
                      ),
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
                    fontSize: 18.sp,
                    fontColor: blackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                //Donations cards
                data.when(
                  data: (data) {
                    final donationsDetails = data['body'];
                    return SizedBox(
                      height: 360.h,
                      child: ListView.builder(
                        padding: EdgeInsets.only(left: 10.w),
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
                      ),
                    );
                  },
                  error: (e, st) => Center(
                    child: CustomText(text: "Something went wrong!!"),
                  ),
                  loading: () => HomeCardShimmerLoading(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
