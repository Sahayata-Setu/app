import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/features/homepage/widgets/heading.dart';
import 'package:donationapp/features/needs/widgets/needDetail.data.dart';
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

class NeedsHomeCards extends StatelessWidget {
  const NeedsHomeCards({super.key, this.singleInfo});

  final singleInfo;

  @override
  Widget build(BuildContext context) {
    // routePush(NeedDetailRoute(id: singleInfo['_id']), context);
    log("this is for homepage${singleInfo}");
    return GestureDetector(
      onTap: () {
        routePush(NeedDetailRoute(id: singleInfo['_id']), context);
        // /donations-details/:id
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Container(
          //   height: 100.h,
          //   width: 300.w,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: NetworkImage(singleInfo['images'][0]),
          //     ),
          //   ),
          // ),
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.r),
                topRight: Radius.circular(12.r)),
            child: Container(
              height: 200.h,
              width: 250.w,
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
            child: Container(
              width: 230.w,
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
                        horizontal: 5.h,
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
                  fontSize: 16.h,
                  fontWeight: FontWeight.normal,
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 10.w, top: 10.h),
            child: Row(
              children: [
                CustomElevatedButton(
                  color: const Color(0xff000C66),
                  width: 80.w,
                  height: 40.h,
                  fn: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ChatDetailPage(
                        name: singleInfo['beneficiary_name'],
                        // sender: senderId,
                        reciever: singleInfo['beneficiary_id'],
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
