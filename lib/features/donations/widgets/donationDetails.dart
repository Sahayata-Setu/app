import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:donationapp/constant/common/Icon/custom-icon.dart';
import 'package:donationapp/constant/common/button/cusotm-button.dart';
import 'package:donationapp/constant/common/horizontal-line/horizontal-line.dart';
import 'package:donationapp/constant/common/loading/loadingPage.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/store/message/message.store.dart';
import 'package:donationapp/utils/store-service/language.store.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:donationapp/constant/common/ImageCarousel/image_carousel.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:line_icons/line_icon.dart';

import '../../../../app.dart';
import '../../../../constant/common/BottomNavBar/BottomNavBar.dart';
import '../../../../constant/common/NavBar/navbar.dart';
import '../../../store/homepage/homepage.store.dart';

class DonationDetail extends ConsumerWidget {
  const DonationDetail({super.key, this.data, @PathParam('id') this.id});
  final data;
  final id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final singleData = data['body'];
    final messages = ref.watch(allConnectedUsersProvider);
    // log("this is from data ${data['quantity']}");
    final getUserType = StorageService.getuserType();
    final data1 = ref.watch(singleDonationsDataProvider(id));

    // log("this is id${id}");
    // log("rgtf donation${singleData}");
    return App(
      component: data1.when(
        data: (data) {
          final singleData = data['body'];
          return Container(
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          LineIcon.user(
                            color: blackColor,
                            size: 30.h,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),

                          // CustomText(
                          //   text: "${singleData['donor_name']}",
                          //   fontSize: 16.sp,
                          //   fontWeight: FontWeight.bold,
                          // ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 5.h),
                                child: CustomText(
                                  text: "${singleData['donor_name']}",
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  LineIcon.mapMarker(
                                    size: 15.w,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  CustomText(
                                    text: "${singleData['city']}",
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: kMargin.h,
                      ),
                      // ListTile(
                      //   leading: CustomText(
                      //       text: "${singleData['title']}", fontSize: 16.sp),
                      //   subtitle: Container(
                      //     alignment: Alignment.topLeft,
                      //     child: Row(
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       mainAxisAlignment: MainAxisAlignment.start,
                      //       children: [
                      //         Padding(
                      //           padding: EdgeInsets.only(right: 8),
                      //           child: CustomIcon(icon: Icons.location_on),
                      //         ),
                      //         CustomText(
                      //           text: "${singleData['city']}",
                      //           fontColor: textColor,
                      //         )
                      //       ],
                      //     ),
                      //   ),
                      // ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "Title",
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            fontColor: Colors.grey.shade600,
                          ),
                          Flexible(
                            child: CustomText(
                              text: "${singleData['title']}",
                              fontSize: 15.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: kMargin.h,
                      ),

                      // ListTile(
                      //   title: CustomText(
                      //     text: "Name",
                      //     fontColor: Colors.grey.shade600,
                      //   ),
                      //   trailing: CustomText(
                      //     text: "${singleData['donor_name']}",
                      //     fontWeight: FontWeight.w500,
                      //     fontSize: 15.sp,
                      //   ),
                      // ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "Category",
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            fontColor: Colors.grey.shade600,
                          ),
                          CustomText(
                            text: "${singleData['category']}",
                            fontSize: 15.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ],
                      ),

                      SizedBox(
                        height: kMargin.h,
                      ),

                      // ListTile(
                      //   title: CustomText(
                      //     text: "Category",
                      //     fontColor: Colors.grey.shade600,
                      //   ),
                      //   trailing: CustomText(
                      //     text: "${singleData['category']}",
                      //     fontWeight: FontWeight.w500,
                      //     fontSize: 15.sp,
                      //   ),
                      // ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "Quantity",
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            fontColor: Colors.grey.shade600,
                          ),
                          CustomText(
                            text: "${singleData['quantity']}",
                            fontSize: 15.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ],
                      ),

                      SizedBox(
                        height: kMargin.h,
                      ),

                      // ListTile(
                      //   title: CustomText(
                      //     text: "Quantity",
                      //     fontColor: Colors.grey.shade600,
                      //   ),
                      //   trailing: CustomText(
                      //     text: "${singleData['quantity']}",
                      //     fontWeight: FontWeight.w500,
                      //     fontSize: 15.sp,
                      //   ),
                      // ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "Preferred Time",
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            fontColor: Colors.grey.shade600,
                          ),
                          CustomText(
                            text: "${singleData['pickupDetails']}",
                            fontSize: 15.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ],
                      ),

                      SizedBox(
                        height: kMargin.h,
                      ),

                      // ListTile(
                      //   title: CustomText(
                      //     text: "Prefeered Time",
                      //     fontColor: Colors.grey.shade600,
                      //   ),
                      //   trailing: CustomText(
                      //     text: "${singleData['pickupDetails']}",
                      //     fontWeight: FontWeight.w500,
                      //     fontSize: 15.sp,
                      //   ),
                      // ),

                      GestureDetector(
                        onTap: () {
                          routeTo(
                              "/message/${singleData['donor_name']}/${singleData['donor_id']}",
                              context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: "Contact Donor",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              fontColor: Colors.grey.shade600,
                            ),
                            LineIcon.sms(),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: kMargin.h,
                      ),

                      // ListTile(
                      //   title: CustomText(
                      //     text: "Contact Donor",
                      //     fontColor: Colors.grey.shade600,
                      //   ),
                      //   trailing: CustomIcon(
                      //     icon: Icons.message,
                      //     color: blueColor,
                      //   ),
                      // ),

                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: "Helpline",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              fontColor: Colors.grey.shade600,
                            ),
                            LineIcon.sms(),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: kMargin.h,
                      ),

                      // ListTile(
                      //   title: CustomText(
                      //     text: "Helpline",
                      //     fontColor: Colors.grey.shade600,
                      //   ),
                      //   trailing: CustomIcon(
                      //     icon: Icons.message,
                      //     color: blueColor,
                      //   ),
                      // ),

                      HorizontalLine(),

                      SizedBox(
                        height: kMargin.h,
                      ),

                      Container(
                        alignment: Alignment.center,
                        child: CustomText(
                          fontSize: 18.sp,
                          text: "Description",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: kMargin.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: kPadding1,
                          right: kPadding1,
                          bottom: kPadding1,
                        ),
                        child: CustomText(
                          fontSize: 14.sp,
                          text: "${singleData['description']}",
                        ),
                      )
                    ],
                  ),
                ),
                getUserType == 'admin'
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomElevatedButton(
                              child: Text("ACCEPT"), fn: () {}),
                          CustomElevatedButton(
                              child: Text("REJECT"), fn: () {}),
                        ],
                      )
                    : SizedBox()
              ],
            ),
          );
        },
        error: (e, h) => Center(
          child: Text("Something went wring"),
        ),
        loading: () => LoadingPage(),
      ),
      appbar: const NavBar(
        title: "Donation Details",
        showBadge: false,
      ),
      isAdmin: false,
      bottomNavBar: const BottomNavBar(showBottomNavBar: false),
    );
  }
}
