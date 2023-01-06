import 'dart:developer';
import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart';
import 'package:donationapp/constant/common/Icon/custom-icon.dart';
import 'package:donationapp/constant/common/button/cusotm-button.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/helpers/time.dart';
import 'package:donationapp/routes/app.router.gr.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard(
      {super.key,
      this.image,
      required this.btnName,
      this.data,
      this.id,
      this.cardType});
  final image;
  final data;
  // final url;
  final id;
  final cardType;
  // final title;
  // final createdAt;
  // final location;
  final btnName;
  // final btnFn;
  @override
  Widget build(BuildContext context) {
    // final bData = data['body'];
    final route = AutoRouter.of(context).current.name;
    log("this is from single categoryfff ${id}");
    return GestureDetector(
      onTap: () {
        // routeTo("/donations/:id", context);
        // routePush(DonationDetailRoute(id: id), context);
        cardType == "need"
            ? routePush(NeedDetailRoute(id: "${id}"), context)
            : routePush(DonationDetailRoute(id: id), context);
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: NetworkImage(image), fit: BoxFit.cover)),
                // child: Image(image: AssetImage(image)),
                height: 150, // 250.0,
                // width: 250.w, //double.infinity,
              ),
              Container(
                alignment: Alignment.bottomRight,
                // padding: EdgeInsets.all(kPadding1),
                height: 150, //350.0,
                child: Card(
                  color: backgroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  elevation: 0,
                  shadowColor: Colors.transparent,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 2.h,
                      horizontal: 10.w,
                    ),
                    child: CustomText(
                      text: "${convertToAgo(data['createdAt'])}",
                      fontSize: 12.sp,
                    ),
                  ),
                ),

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
                text: "${data['title']}",
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomIcon(
                        icon: Icons.location_on,
                        color: textColor,
                      ),
                      CustomText(
                        text: "${data['city']}",
                        fontColor: textColor,
                      ),
                    ],
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
                    child: Text(btnName),
                    //width: 80.w,
                    fn: () {
                      routeTo(
                          "/message/${data['donor_name']}/${data['donor_id']}",
                          context);
                    },
                  ),
                  // IconButton(
                  //     onPressed: () {},
                  //     icon: const CustomIcon(
                  //       icon: Icons.share,
                  //       color: blueColor,
                  //     ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
