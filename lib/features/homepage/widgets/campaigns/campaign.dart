import 'dart:developer';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/loading/loadingPage.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/constant/common/ImageCarousel/ImageOverlay.dart';
import 'package:donationapp/features/campaigns/store/campaign-store.dart';
import 'package:donationapp/features/homepage/widgets/heading.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/utils/store-service/language.store.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:donationapp/constant/common/ImageCarousel/image_carousel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Campaigns extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final approvedCampagins = ref.watch(getApprovedCampaignsProvider(""));

    return Container(
        margin: EdgeInsets.only(bottom: kMargin.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25.w, top: 10.h),
                  child: Heading(
                    header: translation(context).ongoingCampaigns,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 10.h,
                    right: 25.w,
                  ),
                  child: TextButton(
                      onPressed: () {
                        routeTo("/campaigns", context);
                      }, // go to campaigns page
                      child: CustomText(
                        text: translation(context).seeAll,
                        fontColor: secondaryBlue,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      )),
                )
              ],
            ),
            approvedCampagins.when(
              data: (data) {
                List datas = data['body'].toList();
                log("Campagins: ${datas}");

                return Container(
                  height: 250.h,
                  margin: EdgeInsets.only(top: 5.h),
                  child: CarouselSlider(
                    items: datas.map((e) {
                      return GestureDetector(
                        onTap: () {
                          routeTo("/campaigns/${e['_id']}", context);
                        },
                        child: ImageOverlay(
                          border_radius: true,
                          image: "${e['images'][0]}",
                          title: "${e['title']}",
                          location: "${e['city']}",
                          height: 250.h,
                          width: double.infinity,
                          showShareBtn: false,
                        ),
                      );
                    }).toList(),
                    options: CarouselOptions(
                      height: 250.h,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      //aspectRatio: 2 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      viewportFraction: 0.9,
                    ),
                  ),
                );
              },
              error: (e, s) => CustomText(text: "Something went wrong"),
              loading: () => LoadingPage(),
            ),
          ],
        ));
  }
}
