import 'dart:developer';

import 'package:donationapp/constant/common/Icon/custom-icon.dart';
import 'package:donationapp/constant/common/horizontal-line/horizontal-line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:donationapp/constant/common/ImageCarousel/image_carousel.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';

import '../../../../app.dart';
import '../../../../constant/common/BottomNavBar/BottomNavBar.dart';
import '../../../../constant/common/NavBar/navbar.dart';

class NeedDetail extends StatelessWidget {
  const NeedDetail({
    super.key,
    //this.data
  });
  // final data;

  @override
  Widget build(BuildContext context) {
    // final singleData = data['body'];
    // log("this is from data ${data['quantity']}");
    // log("this is id$data}");

    // log("rgtf${singleData}");
    return App(
      component: Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(bottom: kMargin.h),
          // height: ScreenUtil().screenHeight,
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
                        text: "Category",
                        fontColor: Colors.grey.shade600,
                      ),
                      trailing: CustomText(
                        text: "Food",
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
                        text: "4", //"${singleData['quantity']}",
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                      ),
                    ),
                    ListTile(
                      title: CustomText(
                        text: "Created at",
                        fontColor: Colors.grey.shade600,
                      ),
                      trailing: CustomText(
                        text: "10/09/22", //"${singleData['pickupDetails']}",
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                      ),
                    ),
                    ListTile(
                        title: CustomText(
                          text: "Contact Beneficiary",
                          fontColor: Colors.grey.shade600,
                        ),
                        trailing: CustomIcon(
                          icon: Icons.message,
                          color: blueColor,
                        )),
                    ListTile(
                        title: CustomText(
                          text: "Helpline",
                          fontColor: Colors.grey.shade600,
                        ),
                        trailing: CustomIcon(
                          icon: Icons.message,
                          color: blueColor,
                        )),
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
                      text: "description", // "${singleData['description']}",
                    )
                  ],
                ),
              )
            ],
          )),
      appbar: const NavBar(
        title: "Need Detatil",
        showBadge: false,
      ),
      isAdmin: false,
      bottomNavBar: const BottomNavBar(showBottomNavBar: false),
    );
    ;
  }
}
