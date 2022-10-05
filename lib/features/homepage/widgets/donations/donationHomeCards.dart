import 'package:donationapp/constant/common/Icon/custom-icon.dart';
import 'package:donationapp/constant/common/ImageCarousel/ImageOverlay.dart';
import 'package:donationapp/constant/common/button/cusotm-button.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DonationHomeCards extends StatelessWidget {
  const DonationHomeCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImageOverlay(
          border_radius: false,
          image: "assets/images/veg.png",
          location: "Marwadi University",
          title: "Canned Foods",
          height: 200,
          width: 250,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          width: 250,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomElevatedButton(child: Text("CLAIM")),
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
