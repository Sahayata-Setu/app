import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/constant/common/ImageCarousel/ImageOverlay.dart';
import 'package:donationapp/features/homepage/widgets/heading.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:donationapp/constant/common/ImageCarousel/image_carousel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Campaigns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: kPadding1.h),
        // height: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(left: 25.w, top: kPadding),
                child: const Heading(
                  header: "Ongoing Campaigns",
                )),
            Container(
              height: 250.h,
              margin: EdgeInsets.only(top: kMargin.h),
              child: ListView(children: [
                CarouselSlider(
                  items: [
                    ImageOverlay(
                      border_radius: true,
                      image: "assets/images/needy/childrenSitting.png",
                      title: "Help children from rajkot city to go to school.",
                      location: "RK University",
                      height: 250.h,
                      width: double.infinity,
                    ),
                    ImageOverlay(
                      border_radius: true,
                      width: double.infinity,
                      height: 250.h,
                      image: "assets/images/needy/childrenSitting.png",
                      title: "Help one child monthly",
                      location: "Rajkot city",
                    ),
                    ImageOverlay(
                      border_radius: true,
                      width: double.infinity,
                      height: 250.h,
                      image: "assets/images/needy/childrenSitting.png",
                      title: "Let's dress India",
                      location: "Gujarat",
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
