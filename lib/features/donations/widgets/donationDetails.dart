import 'dart:developer';

import 'package:donationapp/constant/common/Icon/custom-icon.dart';
import 'package:donationapp/constant/common/button/cusotm-button.dart';
import 'package:donationapp/constant/common/horizontal-line/horizontal-line.dart';
import 'package:donationapp/store/message/message.store.dart';
import 'package:donationapp/utils/store-service/language.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:donationapp/constant/common/ImageCarousel/image_carousel.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';

import '../../../../app.dart';
import '../../../../constant/common/BottomNavBar/BottomNavBar.dart';
import '../../../../constant/common/NavBar/navbar.dart';

class DonationDetail extends ConsumerWidget {
  const DonationDetail({super.key, this.data});
  final data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final singleData = data['body'];
    final messages = ref.watch(allConnectedUsersProvider);
    // log("this is from data ${data['quantity']}");
    log("this is id$messages}");

    // log("rgtf donation${singleData}");
    return App(
      component: Container(
          alignment: Alignment.topLeft,
          // height: ScreenUtil().screenHeight,
          margin: EdgeInsets.only(bottom: kMargin.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageCarousel(
                data: singleData,
              ),
              Padding(
                padding: EdgeInsets.all(kPadding1.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: CustomText(
                          text: "${singleData['title']}", fontSize: 16.sp),
                      subtitle: Container(
                        alignment: Alignment.topLeft,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 8),
                              child: CustomIcon(icon: Icons.location_on),
                            ),
                            CustomText(
                              text: "${singleData['city']}",
                              fontColor: textColor,
                            )
                          ],
                        ),
                      ),
                    ),
                    ListTile(
                      title: CustomText(
                        text: "Name",
                        fontColor: Colors.grey.shade600,
                      ),
                      trailing: CustomText(
                        text: "${singleData['donor_name']}",
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
                        text: "${singleData['category']}",
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
                    GestureDetector(
                      onTap: () {},
                      child: ListTile(
                          title: CustomText(
                            text: "Contact Donor",
                            fontColor: Colors.grey.shade600,
                          ),
                          trailing: CustomIcon(
                            icon: Icons.message,
                            color: blueColor,
                          )),
                    ),
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
                        fontSize: 18.sp,
                        text: "Description",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // SizedBox(
                    //   height: 10.h,
                    // ),
                    Padding(
                      padding: EdgeInsets.all(kPadding1),
                      child: CustomText(
                        fontSize: 14.sp,
                        text: "${singleData['description']}",
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomElevatedButton(child: Text("ACCEPT"), fn: () {}),
                  CustomElevatedButton(child: Text("REJECT"), fn: () {}),
                ],
              )
            ],
          )),
      appbar: const NavBar(
        title: "Donation Details",
        showBadge: false,
      ),
      isAdmin: false,
      bottomNavBar: const BottomNavBar(showBottomNavBar: false),
    );
    ;
  }
}
