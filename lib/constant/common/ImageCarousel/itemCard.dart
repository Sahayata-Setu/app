import 'dart:ui';

import 'package:badges/badges.dart';
import 'package:donationapp/constant/common/Icon/custom-icon.dart';
import 'package:donationapp/constant/common/button/cusotm-button.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, this.image});
  final image;
  // final url;
  // final title;
  // final createdAt;
  // final location;
  // final btnName;
  // final btnFn;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        routeTo("/donations/:id", context);
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: whiteColor,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  offset: const Offset(0, 6),
                  blurRadius: 11.0,
                  spreadRadius: 0)
            ]),
        child: Column(
          children: [
            Stack(children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover)),
                // child: Image(image: AssetImage(image)),
                height: 150, // 250.0,
                // width: 250.w, //double.infinity,
              ),
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(kPadding1),
                height: 150, //350.0,
                // width: 250.w, //double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    gradient: LinearGradient(
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                      colors: [
                        Colors.grey.withOpacity(0.2),
                        Colors.black.withOpacity(0.6),
                      ],
                      stops: [0.0, 1.0],
                    )),
              )
            ]),
            Padding(
              padding: EdgeInsets.only(top: 8.w, left: 8.w),
              child: CustomText(
                text: "Foods/Vegetables",
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  CustomIcon(
                    icon: Icons.location_on,
                    color: textColor,
                  ),
                  CustomText(
                    text: "location",
                    fontColor: textColor,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomElevatedButton(
                    child: const Text("CLAIM"),
                    //width: 80.w,
                    fn: () {},
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const CustomIcon(
                        icon: Icons.share,
                        color: blueColor,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
