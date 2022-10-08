import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/features/donations/widgets/donationDetails.data.dart';
import 'package:donationapp/features/homepage/widgets/heading.dart';
import 'package:donationapp/features/needs/widgets/needDetail.data.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/routes/app.router.gr.dart';
import 'package:donationapp/utils/store-service/language.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:developer';

import 'package:donationapp/constant/common/Icon/custom-icon.dart';
import 'package:donationapp/constant/common/ImageCarousel/ImageOverlay.dart';
import 'package:donationapp/constant/common/button/cusotm-button.dart';
import 'package:donationapp/constant/kconstant.dart';

class NeedsHomeCards extends StatelessWidget {
  const NeedsHomeCards({super.key, this.singleInfo});

  final singleInfo;

  @override
  Widget build(BuildContext context) {
    // log("this is for homepage${singleInfo.length}");
    return GestureDetector(
      onTap: () {
        //route to needs details page
        routePush(NeedDetailDataRoute(id: singleInfo['_id']), context);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ImageOverlay(
              border_radius: false,
              image: singleInfo['images'].length == 0
                  ? "https://www.ncenet.com/wp-content/uploads/2020/04/No-image-found.jpg"
                  : singleInfo['images'][0],
              location: "${singleInfo['city']}", // "${singleInfo['city']}",
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
                  child: CustomText(text: translation(context).donate),
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
