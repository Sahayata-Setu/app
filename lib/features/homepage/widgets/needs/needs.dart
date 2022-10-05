import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:donationapp/features/homepage/widgets/heading.dart';
import 'package:donationapp/features/homepage/widgets/needs/NeedCatergories.dart';
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
                    Container(
                      margin: EdgeInsets.only(
                          left: 10.w, top: kPadding.h, bottom: kPadding.h),
                      child: Heading(
                        header: "Needs",
                      ),
                    ),
                    SizedBox(
                      height: 400.h,
                      child: GridView.count(
                        padding: EdgeInsets.all(10.w),
                        childAspectRatio: 0.98.w,
                        crossAxisSpacing: 8.w,
                        mainAxisSpacing: 8.w,
                        crossAxisCount: 2,
                        children: [
                          NeedCategories(
                            colorP: secondaryBlue,
                            colorS: whiteColor,
                            icon: Icons.food_bank,
                            numb: "798",
                            title: "Food",
                          ),
                          NeedCategories(
                            colorP: tertiaryBlue,
                            colorS: whiteColor,
                            icon: Icons.person,
                            numb: "566",
                            title: "Clothes",
                          ),
                          NeedCategories(
                            colorP: Colors.lightBlue,
                            colorS: whiteColor,
                            icon: Icons.toys,
                            numb: "300",
                            title: "Toys",
                          ),
                          NeedCategories(
                            colorP: darkBlue,
                            colorS: whiteColor,
                            icon: Icons.library_books,
                            numb: "490",
                            title: "Books",
                          )
                        ],
                      ),
                    )
                  ]))
        ]));
  }
}
