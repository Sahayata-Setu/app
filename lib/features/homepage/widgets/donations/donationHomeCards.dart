import 'package:cached_network_image/cached_network_image.dart';
import 'package:donationapp/features/donations/widgets/donationDetails.data.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/routes/app.router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:developer';

import 'package:donationapp/constant/common/Icon/custom-icon.dart';
import 'package:donationapp/constant/common/ImageCarousel/ImageOverlay.dart';
import 'package:donationapp/constant/common/button/cusotm-button.dart';
import 'package:donationapp/constant/kconstant.dart';

class DonationHomeCards extends StatelessWidget {
  const DonationHomeCards({super.key, this.singleInfo});

  final singleInfo;

  @override
  Widget build(BuildContext context) {
    // log("this is for homepage${singleInfo}");
    return GestureDetector(
      onTap: () {
        routePush(DonationDetailDataRoute(id: singleInfo['_id']), context);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ImageOverlay(
              border_radius: false,
              image: singleInfo['images'][0],
              location: "${singleInfo['city']}",
              title: "${singleInfo['title']}",
              height: 200.h,
              width: 250.w,
              showShareBtn: false),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            width: 250.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomElevatedButton(
                  child: Text("CLAIM"),
                  width: 80.w,
                  fn: () {},
                ),
                IconButton(
                    onPressed: () {},
                    icon: CustomIcon(
                      icon: Icons.share,
                      color: blueColor,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
