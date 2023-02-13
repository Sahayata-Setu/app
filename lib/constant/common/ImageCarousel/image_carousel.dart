import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({super.key, this.data});
  final data;

  @override
  Widget build(BuildContext context) {
    // log("this is from image crousel ${data['images'].isEmpty}");
    return Container(
      height: 200,
      margin: EdgeInsets.only(top: kMargin / 2),
      child: ListView(children: [
        CarouselSlider(
          items: [
            //1st Image of Slider

            Container(
              // margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage(
                    data['images'] == null || data['images'].isEmpty
                        ? "https://www.ncenet.com/wp-content/uploads/2020/04/No-image-found.jpg"
                        : data['images'][0],
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //2nd Image of Slider
            // Container(
            //   margin: const EdgeInsets.all(6.0),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(8.0),
            //     image: const DecorationImage(
            //       image: AssetImage("assets/images/veg.png"),
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),
          ],
          options: CarouselOptions(
            height: 200.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 0.9,
          ),
        )
      ]),
    );
  }
}
