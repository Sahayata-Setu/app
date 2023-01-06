import 'package:cached_network_image/cached_network_image.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/features/new-message/chat-detail.dart';
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
import 'package:line_icons/line_icon.dart';

class DonationHomeCards extends StatelessWidget {
  const DonationHomeCards({super.key, this.singleInfo});

  final singleInfo;

  @override
  Widget build(BuildContext context) {
    log("this is for homepage ${singleInfo['images'][0]}");
    return GestureDetector(
      onTap: () {
        routePush(DonationDetailRoute(id: singleInfo['_id']), context);
        // /donations-details/:id
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.r),
                topRight: Radius.circular(12.r)),
            child: Container(
              height: 210.h,
              width: 260.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    singleInfo['images'].length == 0
                        ? "https://www.ncenet.com/wp-content/uploads/2020/04/No-image-found.jpg"
                        : singleInfo['images'][0],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 10.w,
              left: 10.w,
              top: 10.h,
            ),
            child: SizedBox(
              width: 240.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: CustomText(
                      text: "${singleInfo['title']}",
                      fontWeight: FontWeight.bold,
                      fontColor: blackColor,
                      fontSize: 18.sp,
                    ),
                  ),
                  Card(
                    color: backgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    elevation: 0,
                    shadowColor: Colors.transparent,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5.h,
                        horizontal: 10.w,
                      ),
                      child: CustomText(
                        text: "1 hr",
                        fontSize: 16.sp,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 10.w,
              left: 10.w,
              top: 5.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                LineIcon.mapMarker(),
                SizedBox(
                  width: 5.w,
                ),
                CustomText(
                  text: "${singleInfo['city']}",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.normal,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, top: 10.h),
            child: Row(
              children: [
                CustomElevatedButton(
                  color: const Color(0xff000C66),
                  width: 80.w,
                  height: 35.h,
                  fn: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ChatDetailPage(
                        name: singleInfo['donor_name'],
                        // sender: senderId,
                        reciever: singleInfo['donor_id'],
                      );
                    }));
                    // routeTo(
                    //     "/message/${singleInfo['donor_name']}/${singleInfo['donor_id']}",
                    //     context);
                  },
                  child: Text(
                    translation(context).claim,
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}




          // ImageOverlay(
          //   border_radius: false,
          //   image: singleInfo['images'].length == 0
          //       ? "https://www.ncenet.com/wp-content/uploads/2020/04/No-image-found.jpg"
          //       : singleInfo['images'][0],
          //   location: "${singleInfo['city']}",
          //   title: "${singleInfo['title']}",
          //   height: 200.h,
          //   width: 250.w,
          //   showShareBtn: false,
          // ),
          // Container(
          //   padding: EdgeInsets.symmetric(horizontal: 10.w),
          //   width: 250.w,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       CustomElevatedButton(
          //         child: Text(translation(context).claim),
          //         width: 80.w,
          //         fn: () {
          //           routeTo(
          //               "/message/${singleInfo['donor_name']}/${singleInfo['donor_id']}",
          //               context);
          //         },
          //       ),
          //       IconButton(
          //           onPressed: () {},
          //           icon: CustomIcon(
          //             icon: Icons.share,
          //             color: blueColor,
          //           ))
          //     ],
          //   ),
          // )
