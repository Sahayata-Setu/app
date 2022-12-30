import 'dart:developer';

import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/horizontal-line/horizontal-line.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/utils/store-service/language.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icon.dart';

class DonationsClaim extends StatelessWidget {
  const DonationsClaim({super.key});

  @override
  Widget build(BuildContext context) {
    return App(
      component: Container(
        padding: EdgeInsets.all(kPadding.h),
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
              margin: EdgeInsets.only(
                bottom: 10.h,
              ),
              elevation: 0,
              shadowColor: Colors.transparent,
              child: Container(
                padding: EdgeInsets.all(
                  kPadding.w,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Category of donation
                        Flexible(
                          child: CustomText(
                            text: "Toys",
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        PopupMenuButton(
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              child: CustomText(
                                text: "Edit",
                              ),
                              onTap: () {},
                            ),
                            PopupMenuItem(
                              child: CustomText(
                                text: "Claimed",
                              ),
                              onTap: () {},
                            ),
                            PopupMenuItem(
                              child: CustomText(
                                text: "Delete",
                              ),
                              onTap: () {},
                            ),
                          ],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: LineIcon.verticalEllipsis(),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        CustomText(
                          text: "Pending",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.normal,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        CustomText(
                          text: "2022-12-22",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.normal,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      appbar: NavBar(
        title: translation(context).donations_claim,
        // route: "/homepage",
        showBadge: false,
      ),
      bottomNavBar: BottomNavBar(showBottomNavBar: false),
      isAdmin: false,
    );
  }
}
