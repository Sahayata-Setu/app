import 'dart:ui';

import 'package:badges/badges.dart';
import 'package:donationapp/constant/common/Icon/custom-icon.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';

class DonationCard extends StatelessWidget {
  const DonationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        routeTo("/donations/:id", context);
      },
      child: SizedBox(
        width: 150,
        height: 150,
        child: Card(
          margin: EdgeInsets.only(bottom: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: SizedBox(
            height: 300,
            child: Column(
              children: [
                Container(
                  height: 150,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/veg.png",
                          ),
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter)),
                ),
                ListTile(
                  title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "Foods/Vegetables",
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                        Badge(
                          badgeContent: const Text(
                            "1h ago",
                            style: TextStyle(color: whiteColor),
                          ),
                          badgeColor: secondaryBlue,
                          shape: BadgeShape.square,
                          padding: EdgeInsets.all(5),
                          borderRadius: BorderRadius.circular(10),
                          toAnimate: false,
                        )
                      ]),
                  subtitle: Row(
                    children: [
                      const CustomIcon(
                        icon: Icons.location_on,
                        size: kMargin,
                      ),
                      CustomText(
                        text: "Marwadi University",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w300,
                      )
                    ],
                  ),
                ),
                const Divider(
                  color: secondaryBlue,
                  thickness: 1.25,
                  indent: 15,
                  endIndent: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kPadding1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 5),
                            child: const CustomIcon(
                              icon: Icons.account_circle_rounded,
                              color: secondaryBlue,
                              size: kiconSize2,
                            ),
                          ),
                          CustomText(text: "Tansimul Hassen")
                        ],
                      ),
                      OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                              foregroundColor: secondaryBlue,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  side: BorderSide(
                                      color: Colors.blue, width: 2))),
                          child: Text(
                            "Claim".toUpperCase(),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
