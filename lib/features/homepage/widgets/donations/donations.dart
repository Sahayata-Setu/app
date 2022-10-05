import 'package:donationapp/constant/common/Icon/custom-icon.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/button/cusotm-button.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/donations/widgets/dontaionCard.dart';
import 'package:donationapp/constant/common/ImageCarousel/ImageOverlay.dart';
import 'package:donationapp/features/homepage/widgets/donations/donationCategoty.dart';
import 'package:donationapp/features/homepage/widgets/donations/donationHomeCards.dart';
import 'package:donationapp/features/homepage/widgets/heading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DonationsHome extends StatelessWidget {
  const DonationsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kPadding),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topLeft,
            // height: 200,
            // margin: EdgeInsets.only(left: 25, top: kPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: kPadding),
                  child: Heading(
                    header: "Donations",
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: GridView(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 125),
                    children: [
                      DonationsCategory(
                          text: "Foods",
                          icon: Icons.food_bank,
                          url: "/donations/:category"),
                      DonationsCategory(text: "Toys", icon: Icons.toys),
                      DonationsCategory(
                          text: "Books", icon: Icons.library_books),
                      DonationsCategory(text: "Clothes", icon: Icons.person)
                    ],
                  ),
                ),
                SizedBox(
                    height: 270,
                    child: ListView.builder(
                      padding: EdgeInsets.only(left: kPadding),
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.all(10),

                        // height: 200.0,
                        // width: 150,
                        child: Container(
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
                            child: DonationHomeCards()),
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}