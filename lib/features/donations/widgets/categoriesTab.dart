import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/homepage/widgets/donations/donations.dart';
import 'package:donationapp/features/homepage/widgets/heading.dart';
import 'package:donationapp/features/homepage/widgets/needs/needs.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesTab extends StatefulWidget {
  const CategoriesTab({super.key, this.post});
  final post;
  @override
  State<CategoriesTab> createState() => _CategoriesTabState();
}

class _CategoriesTabState extends State<CategoriesTab> {
  bool showDonation = true;
  @override
  Widget build(BuildContext context) {
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
                    setState(() {
                      showDonation = true;
                    });
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
                    setState(() {
                      showDonation = false;
                    });
                  },
                )
              ],
            ),
          ),
          showDonation
              ? DonationsHome(
                  donationsData: widget.post,
                )
              : NeedsHome(),
        ],
      ),
    );
  }
}
