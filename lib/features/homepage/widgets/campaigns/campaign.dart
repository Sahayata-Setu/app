import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/constant/common/ImageCarousel/ImageOverlay.dart';
import 'package:donationapp/features/homepage/widgets/heading.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/utils/store-service/language.store.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:donationapp/constant/common/ImageCarousel/image_carousel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Campaigns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 30.h),
        // height: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 25.w, top: kPadding.h),
                    child: Heading(
                      header: translation(context).ongoingCampaigns,
                    )),
                Container(
                  margin: EdgeInsets.only(
                    top: kPadding.h,
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
            Container(
              height: 250.h,
              margin: EdgeInsets.only(top: kMargin.h),
              child: ListView(children: [
                CarouselSlider(
                  items: [
                    ImageOverlay(
                      border_radius: true,
                      image:
                          "https://images.unsplash.com/photo-1542810634-71277d95dcbb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
                      title: "Help children from rajkot city to go to school.",
                      location: "RK University",
                      height: 250.h,
                      width: double.infinity,
                      showShareBtn: true,
                    ),
                    ImageOverlay(
                      border_radius: true,
                      width: double.infinity,
                      height: 250.h,
                      image:
                          "https://images.unsplash.com/photo-1635929114944-8bab23b98e74?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1534&q=80",
                      title: "Help one child monthly",
                      location: "Rajkot city",
                      showShareBtn: true,
                    ),
                    ImageOverlay(
                      border_radius: true,
                      width: double.infinity,
                      height: 250.h,
                      image:
                          "https://images.unsplash.com/photo-1517596301415-0e77e9e18eaf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                      title: "Let's dress India",
                      location: "Gujarat",
                      showShareBtn: true,
                    ),
                    // ImageOverlay(image: "assets/images/needy/poor1.jpg"),
                    // ImageOverlay(image: "assets/images/needy/needy3.jpg"),
                    //ImageOverlay(image: "assets/images/needy/poor2.jpg"),
                  ],
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
                )
              ]),
            ),
          ],
        ));
  }
}
