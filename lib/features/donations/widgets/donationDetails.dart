import 'package:donationapp/constant/common/horizontal-line/horizontal-line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:auto_route/annotations.dart';
import 'package:donationapp/constant/common/ImageCarousel/image_carousel.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';

import '../../../../app.dart';
import '../../../../constant/common/BottomNavBar/BottomNavBar.dart';
import '../../../../constant/common/NavBar/navbar.dart';

class Donation_Detail extends StatelessWidget {
  final donationId;
  const Donation_Detail({super.key, @PathParam('id') this.donationId});

  @override
  Widget build(BuildContext context) {
    return App(
      component: Container(
          alignment: Alignment.topLeft,
          height: ScreenUtil().screenHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ImageCarousel(),
              Padding(
                padding: EdgeInsets.all(kPadding1.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: CustomText(
                        text: "Name",
                        fontColor: Colors.grey.shade600,
                      ),
                      trailing: CustomText(
                        text: "Vegetables",
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                      ),
                    ),
                    ListTile(
                      title: CustomText(
                        text: "Quantity",
                        fontColor: Colors.grey.shade600,
                      ),
                      trailing: CustomText(
                        text: "4",
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                      ),
                    ),
                    ListTile(
                      title: CustomText(
                        text: "Prefeered Time",
                        fontColor: Colors.grey.shade600,
                      ),
                      trailing: CustomText(
                        text: "9am",
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                      ),
                    ),
                    ListTile(
                      title: CustomText(
                        text: "Contact Donor",
                        fontColor: Colors.grey.shade600,
                      ),
                      trailing: CustomText(
                        text: "Vegetables",
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                      ),
                    ),
                    HorizontalLine(),
                    Container(
                        alignment: Alignment.center,
                        child: CustomText(text: "Description")),
                    FittedBox(
                        child: CustomText(
                            fontSize: 14.sp,
                            text:
                                "kjhkjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjnmbvcfdtyuihkjvcdr6tuygjhvchgjbnvctfuygjhvfgvcfghvfghkjhkjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjnmbvcfdtyuihkjvcdr6tuygjhvchgjbnvctfuygjhvfgvcfghvfgh"))
                  ],
                ),
              )
            ],
          )),
      appbar: const NavBar(
        title: "Donations Detatil",
        showBadge: false,
      ),
      bottomNavBar: const BottomNavBar(showBottomNavBar: false),
    );
    ;
  }
}
