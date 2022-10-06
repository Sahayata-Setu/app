import 'dart:developer';

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

class DonationDetail extends StatelessWidget {
  const DonationDetail({super.key, this.data});
  final data;

  @override
  Widget build(BuildContext context) {
    final singleData = data['body'];
    // log("this is from data ${data['quantity']}");
    log("this is id$data}");

    log("rgtf${singleData}");
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
                        text: "${singleData['quantity']}",
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
                        text: "${singleData['pickupDetails']}",
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
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: CustomText(
                        fontSize: 16.sp,
                        text: "Description",
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomText(
                      fontSize: 14.sp,
                      text: "${singleData['description']}",
                    )
                  ],
                ),
              )
            ],
          )),
      appbar: const NavBar(
        title: "Donations Detatil",
        showBadge: false,
      ),
      isAdmin: false,
      bottomNavBar: const BottomNavBar(showBottomNavBar: false),
    );
    ;
  }
}
