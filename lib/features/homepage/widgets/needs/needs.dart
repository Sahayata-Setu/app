import 'package:donationapp/features/homepage/widgets/heading.dart';
import 'package:donationapp/features/homepage/widgets/needs/NeedCatergories.dart';
import 'package:flutter/material.dart';

import 'package:donationapp/constant/common/Icon/custom-icon.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class NeedsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(kPadding),
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
                          left: kPadding1, top: kPadding, bottom: kPadding),
                      child: Heading(
                        header: "Needs",
                      ),
                    ),
                    SizedBox(
                      height: 400,
                      child: GridView.count(
                        padding: EdgeInsets.all(10),
                        childAspectRatio: 0.98,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
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
