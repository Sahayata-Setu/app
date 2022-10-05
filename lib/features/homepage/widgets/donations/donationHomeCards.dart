import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:donationapp/constant/common/Icon/custom-icon.dart';
import 'package:donationapp/constant/common/ImageCarousel/ImageOverlay.dart';
import 'package:donationapp/constant/common/button/cusotm-button.dart';
import 'package:donationapp/constant/kconstant.dart';

class DonationHomeCards extends StatelessWidget {
  const DonationHomeCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ImageOverlay(
          border_radius: false,
          image: "assets/images/veg.png",
          location: "Marwadi University",
          title: "Canned Foods",
          height: 200.h,
          width: 250.w,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          width: 250.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomElevatedButton(child: Text("CLAIM"), width: 80.w),
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
    );
  }
}
