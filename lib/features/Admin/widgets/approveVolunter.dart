import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:donationapp/constant/common/ImageCarousel/itemCard.dart';
import 'package:donationapp/constant/common/button/cusotm-button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';

import '../../../../app.dart';
import '../../../../constant/common/BottomNavBar/BottomNavBar.dart';
import '../../../../constant/common/NavBar/navbar.dart';

class ApproveVolunter extends StatelessWidget {
  const ApproveVolunter({super.key, @PathParam('id') this.id
      //this.data
      });
  final id;

  @override
  Widget build(BuildContext context) {
    log("${id}");
    //  final singleData = data['body'];
    // log("this is from data ${data['quantity']}");
    // log("this is id$singleData[]}");

    // DateFormat('yyyy-MM-dd').format(selectedDate)
    //final date = singleData['pickupDate'].split("T");
    return App(
      component: Container(
          // height: ScreenUtil().scaleHeight,
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(bottom: kMargin.h),
          // height: ScreenUtil().screenHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                        text: "Name", //"${singleData['beneficiary_name']}",
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                      ),
                    ),
                    ListTile(
                      title: CustomText(
                        text: "Contact Number",
                        fontColor: Colors.grey.shade600,
                      ),
                      trailing: CustomText(
                        text: "9983445840", //"${singleData['category']}",
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                      ),
                    ),
                    ListTile(
                      title: CustomText(
                        text: "Email",
                        fontColor: Colors.grey.shade600,
                      ),
                      trailing: CustomText(
                        text: "fre@gmail.com", //"${singleData['category']}",
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: kPadding1),
                      child: CustomText(
                        fontSize: kPadding1,
                        text: "Reason to apply",
                        fontColor: Colors.grey.shade600,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: kPadding1),
                      child: CustomText(
                        fontSize: 14.sp,
                        text:
                            "descriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescription", // "${singleData['description']}",
                      ),
                    ),
                    // ItemCard(btnName: btnName)
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: kPadding1),
                      child: CustomText(
                        fontSize: kPadding1,
                        text: "ID CARD",
                        fontColor: Colors.grey.shade600,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            left: kPadding, top: 10, right: kPadding),
                        //width: 200.w,
                        height: 200.h,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/veg.png",
                                ),
                                fit: BoxFit.cover))),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            left: kPadding, top: 10, right: kPadding),
                        //width: 200.w,
                        height: 200.h,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/veg.png",
                                ),
                                fit: BoxFit.cover))),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomElevatedButton(
                              child: CustomText(
                                  text: "ACCEPT", fontColor: blueColor),
                              fn: () {}),
                          CustomElevatedButton(
                              child: CustomText(
                                text: "REJECT",
                                fontColor: blueColor,
                              ),
                              fn: () {}),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
      appbar: const NavBar(
        title: "Approve Volunter",
        showBadge: false,
      ),
      isAdmin: false,
      bottomNavBar: const BottomNavBar(showBottomNavBar: false),
    );
  }
}
