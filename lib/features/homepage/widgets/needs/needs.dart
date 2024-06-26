import 'dart:developer';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/features/homepage/widgets/donations/donationCategoty.dart';
import 'package:donationapp/features/homepage/widgets/donations/donations-homecard-shimmer.dart';
import 'package:donationapp/store/homepage/homepage.store.dart';
import 'package:donationapp/utils/store-service/language.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:donationapp/features/homepage/widgets/needs/needsHomeCards.dart';

import 'package:donationapp/constant/kconstant.dart';

class NeedsHome extends ConsumerWidget {
  const NeedsHome({super.key});
  // final data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final needDetails = data['body'].toList();
    // log("this is from needs page ${needDetails}");

    final data = ref.watch(donationsOrRequestProvider("requests"));
    // log("This is data from needs section: ${data}");
    // final badge1 = ref.watch(needsByCategoryProvider(category));

    return Container(
      margin: EdgeInsets.only(top: kPadding.w),
      alignment: Alignment.topLeft,
      // height: 400,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          alignment: Alignment.topLeft,
          // height: 200,
          // margin: EdgeInsets.only(left: 25, top: kPadding),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                    // icon: Icons.food_bank,
                    type: "need",

                    imageName: "foods",
                    category: "Food",

                    badge: 33,
                    url: "/needs/Food",
                    forPadding: 15.0,
                  ),
                  DonationsCategory(
                    text: translation(context).toys,
                    badge: 9,
                    // icon: Icons.toys,
                    type: "need",
                    category: "Toys",

                    imageName: "toys",
                    url: "/needs/Toys",
                    forPadding: 10.0,
                  ),
                  DonationsCategory(
                    text: translation(context).books,
                    badge: 8,
                    type: "need",
                    category: "Books",

                    imageName: "books",
                    // icon: Icons.library_books,
                    url: "/needs/Books",
                    forPadding: 15.0,
                  ),
                  DonationsCategory(
                    text: translation(context).clothes,
                    badge: 10,
                    category: "Clothes",

                    url: "/needs/Clothes",
                    imageName: "clothes",
                    type: "need",

                    forPadding: 15.0,
                    // icon: Icons.person,
                  ),
                  // DonationsCategory(text: "Others", icon: Icons.more_horiz)
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
                text: translation(context).latestNeeds,
                fontSize: 18.sp,
                fontColor: blackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            // needDetails.length > 0
            //     ?
//Donations cards

            data.when(
              data: (data) {
                // log("This is needs data: ${data}");
                final needDetails = data['body'];
                return SizedBox(
                  height: 360.h,
                  child: ListView.builder(
                    padding: EdgeInsets.only(left: 10.w),
                    scrollDirection: Axis.horizontal,
                    itemCount: needDetails.length,
                    itemBuilder: (context, index) => Container(
                      margin: EdgeInsets.all(10.w),
                      child: Card(
                        margin: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        elevation: 0,
                        shadowColor: Colors.transparent,
                        child: NeedsHomeCards(
                          singleInfo: needDetails[index],
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

            // SizedBox(
            //     height: 300.h,
            //     child: ListView.builder(
            //       padding: EdgeInsets.only(left: kPadding),
            //       scrollDirection: Axis.horizontal,
            //       itemCount: needDetails.length,
            //       //donationsDetails.length,
            //       itemBuilder: (context, index) => Container(
            //         margin: EdgeInsets.all(10.w),

            //         // height: 200.0,
            //         // width: 150,
            //         child: Container(
            //           decoration: BoxDecoration(
            //               color: backgroundColor,
            //               borderRadius: BorderRadius.circular(15),
            //               boxShadow: [
            //                 BoxShadow(
            //                     color: Colors.grey.withOpacity(0.3),
            //                     offset: const Offset(0, 6),
            //                     blurRadius: 11.0,
            //                     spreadRadius: 0)
            //               ]),
            //           child: NeedsHomeCards(
            //             singleInfo: needDetails[index],
            //           ),
            //         ),
            //       ),
            //     ))
            // : Center(
            //     child: Container(
            //       padding: EdgeInsets.only(
            //         left: kPadding.w,
            //         top: kPadding.h + 20.h,
            //       ),
            //       child: CustomText(
            //         text: "No needs request yet",
            //         fontSize: 18.sp,
            //       ),
            //     ),
            //   ),
            // Container(
            //   margin: EdgeInsets.only(
            //       left: 10.w, top: kPadding.h, bottom: kPadding.h),
            //   child: Heading(
            //     header: "Needs",
            //   ),
            // ),
            // SizedBox(
            //   height: 400.h,
            //   child: GridView.count(
            //     padding: EdgeInsets.all(10.w),
            //     childAspectRatio: 0.98.w,
            //     crossAxisSpacing: 8.w,
            //     mainAxisSpacing: 12.w,
            //     crossAxisCount: 2,
            //     children: [
            //       NeedCategories(
            //         colorP: secondaryBlue,
            //         colorS: whiteColor,
            //         icon: Icons.food_bank,
            //         numb: "798",
            //         title: "Food",
            //       ),
            //       NeedCategories(
            //         colorP: tertiaryBlue,
            //         colorS: whiteColor,
            //         icon: Icons.person,
            //         numb: "566",
            //         title: "Clothes",
            //       ),
            //       NeedCategories(
            //         colorP: Colors.lightBlue,
            //         colorS: whiteColor,
            //         icon: Icons.toys,
            //         numb: "300",
            //         title: "Toys",
            //       ),
            //       NeedCategories(
            //         colorP: darkBlue,
            //         colorS: whiteColor,
            //         icon: Icons.library_books,
            //         numb: "490",
            //         title: "Books",
            //       )
            //     ],
            //   ),
            // )
          ]),
        )
      ]),
    );
  }
}
