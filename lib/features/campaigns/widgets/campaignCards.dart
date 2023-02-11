import 'package:donationapp/constant/common/Icon/custom-icon.dart';
import 'package:donationapp/constant/common/ImageCarousel/ImageOverlay.dart';
import 'package:donationapp/constant/common/button/cusotm-button.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CampaignCards extends StatelessWidget {
  CampaignCards(
      {super.key,
      required this.title,
      required this.image,
      required this.location});
  final title;
  final location;
  final image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                offset: const Offset(0, 6),
                blurRadius: 11.0,
                spreadRadius: 0)
          ]),
      margin: EdgeInsets.only(bottom: kPadding1.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ImageOverlay(
              border_radius: false,
              image: image,
              location: location,
              title: title,
              height: 200.h,
              width: double.infinity,
              showShareBtn: false),
          Container(
            padding: EdgeInsets.only(
                bottom: 10.w, left: 10.w, right: 10.w, top: 10.w),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomElevatedButton(
                  child: Text("DONATE"),
                  width: 100.w,
                  fn: () {},
                ),
                // IconButton(
                //     onPressed: () {}, //share
                //     icon: CustomIcon(
                //       icon: Icons.share,
                //       color: blueColor,
                //     ))
              ],
            ),
          )
        ],
      ),
    );
    ;
  }
}
