import 'package:badges/badges.dart';
import 'package:donationapp/constant/common/Icon/custom-icon.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DonationsCategory extends StatelessWidget {
  const DonationsCategory(
      {super.key, required this.text, this.url, required this.icon});
  final text;
  final icon;
  final url;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        routeTo(url, context);
      } //link to donations/category,
      ,
      child: Container(
        // height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Badge(
              badgeColor: blueColor,
              badgeContent: const Text(
                // add the number of donations here
                '99',
                style: TextStyle(color: Colors.white),
              ),
              child: Container(
                width: 50.w,
                height: 50.h,
                child: CustomIcon(icon: icon, color: whiteColor),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: secondaryBlue),
              ),
            ),
            CustomText(
              text: text,
              fontSize: 12.sp,
              fontColor: textColor,
            )
          ],
        ),
      ),
    );
  }
}
