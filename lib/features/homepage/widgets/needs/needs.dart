import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/features/homepage/widgets/donations/donationCategoty.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:donationapp/features/homepage/widgets/heading.dart';
import 'package:donationapp/features/homepage/widgets/needs/NeedCatergories.dart';
import 'package:donationapp/features/homepage/widgets/needs/needsHomeCards.dart';

import 'package:donationapp/constant/kconstant.dart';

class NeedsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(kPadding.w),
        alignment: Alignment.topLeft,
        // height: 400,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              alignment: Alignment.topLeft,
              // height: 200,
              // margin: EdgeInsets.only(left: 25, top: kPadding),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                              url: "/needs/:category"),
                          DonationsCategory(text: "Toys", icon: Icons.toys),
                          DonationsCategory(
                              text: "Books", icon: Icons.library_books),
                          DonationsCategory(
                              text: "Clothes", icon: Icons.person),
                          //  DonationsCategory(text: "Others", icon: Icons.more_horiz)
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: kPadding.w, top: 10.h),
                      child: CustomText(
                        text: "Latest Need Requests",
                        fontSize: 15.sp,
                        fontColor: textColor,
                        fontWeight: FontWeight.w800,
                      ),
                    ),

                    SizedBox(
                        height: 300.h,
                        child: ListView.builder(
                          padding: EdgeInsets.only(left: kPadding),
                          scrollDirection: Axis.horizontal,
                          itemCount: 5, //donationsDetails.length,
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
                              child: NeedsHomeCards(
                                  // singleInfo: donationsDetails[index],
                                  ),
                            ),
                          ),
                        )),
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
                  ]))
        ]));
  }
}
