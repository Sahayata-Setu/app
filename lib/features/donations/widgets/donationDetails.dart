import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:donationapp/constant/common/GoogleButtomNavBar/GoogleButtomNavBar.dart';
import 'package:donationapp/constant/common/Icon/custom-icon.dart';
import 'package:donationapp/constant/common/button/cusotm-button.dart';
import 'package:donationapp/constant/common/button/primary-custom-botton.dart';
import 'package:donationapp/constant/common/horizontal-line/horizontal-line.dart';
import 'package:donationapp/constant/common/loading/loadingPage.dart';
import 'package:donationapp/features/Admin/Requests/widgets/userData.dart';
import 'package:donationapp/features/Admin/Users/widgets/detailTile.dart';
import 'package:donationapp/features/new-message/chat-detail.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/store/admin-dashboard/admin-dashboard.store.dart';
import 'package:donationapp/store/message/message.store.dart';
import 'package:donationapp/utils/store-service/language.store.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:donationapp/constant/common/ImageCarousel/image_carousel.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:get_storage/get_storage.dart';
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
    log("This is  ");

    final approveProv = ref.watch(approveVolunteerProvider);
    final userId = StorageService.getId();

    log("Donation Id: ${id}");
    handleApprove() {
      try {
        final resp = approveProv.approveDonations(id, "approve").then((value) {
          // log("this is resp from approve ${value['message']}");
          String mess = value['message'];
          // if (value['message'] == "Donation Approved") {
          ref.refresh(pendingDonationsProvider);
          final snackBar = SnackBar(
            content: Text("$mess"),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          // } e
        }).catchError((e) {
          final snackBar = SnackBar(
            content: Text("Donation already Approved"),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          // log("this is error from resp ${e}");
        });
        // resp.val();
        // log("this is resp from approve ${resp.statusCode}");
        // ref.refresh(pendingDonationsProvider);
        // const snackBar = SnackBar(
        //   content: Text('Sucessfully Approved.'),
        // );
        // ScaffoldMessenger.of(context).showSnackBar(snackBar);
        // log(resp);
      } catch (e) {
        log("this is error from resp ${e}");
      }
    }

    handleReject() {
      try {
        final resp = approveProv.approveDonations(id, "reject");
        ref.refresh(pendingDonationsProvider);
        const snackBar = SnackBar(
          content: Text('Request sucessfully rejected'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        // log(resp);
      } catch (e) {
        log("this is error from resp ${e}");
      }
    }

    // log("this is id${id}");
    // log("rgtf donation${singleData}");
    return App(
      appbar: const NavBar(
        title: "Donation Details",
        showBadge: false,
      ),
      isAdmin: false,
      bottomNavBar: const GoogleButtomNavBar(showBottomNavBar: false),
      component: data1.when(
        data: (data) {
          final singleData = data['body'];
          final date = singleData['pickupDate'].split("T");
          log("Single Data: ${singleData}");
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
                Container(
                  margin: EdgeInsets.all(10.h),
                  child: UserData(
                    userName: "${singleData['donor_name']}",
                    userCity: "${singleData['city']}",
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(10.h),
                  child: Column(
                    children: [
                      DetailTile(
                        title: "Title",
                        value: "${singleData['title']}",
                      ),
                      DetailTile(
                        title: "Quantity",
                        value: "${singleData['quantity']}",
                      ),
                      DetailTile(
                        title: "Preferred Time",
                        value: "${singleData['quantity']}",
                      ),
                      DetailTile(
                        title: "Created At",
                        value: "${date[0]}",
                      ),
                      DetailTile(
                        title: "Pickup Detail",
                        value: "${singleData['pickupDetails']}",
                      ),
                    ],
                  ),
                ),

                // GestureDetector(
                //   onTap: () {
                //     Navigator.push(context,
                //         MaterialPageRoute(builder: (context) {
                //       return ChatDetailPage(
                //         name: singleData['donor_name'],
                //         // sender: senderId,
                //         reciever: singleData['donor_id'],
                //       );
                //     }));
                //   },
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       CustomText(
                //         text: "Contact Donor",
                //         fontSize: 16.sp,
                //         fontWeight: FontWeight.bold,
                //         fontColor: Colors.grey.shade600,
                //       ),
                //       LineIcon.sms(),
                //     ],
                //   ),
                // ),

                // SizedBox(
                //   height: kMargin.h,
                // ),

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

                // GestureDetector(
                //   onTap: () {},
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       CustomText(
                //         text: "Helpline",
                //         fontSize: 16.sp,
                //         fontWeight: FontWeight.bold,
                //         fontColor: Colors.grey.shade600,
                //       ),
                //       LineIcon.sms(),
                //     ],
                //   ),
                // ),

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

                Center(
                  child: HorizontalLine(
                    width: MediaQuery.of(context).size.width - 20.w,
                  ),
                ),

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
                ),

                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 10.h),
                  child: HorizontalLine(
                    width: MediaQuery.of(context).size.width - 20.w,
                  ),
                ),

                getUserType == 'admin'
                    ? Container(
                        margin: EdgeInsets.only(top: 10.h),
                        child: singleData['status'] == "pending"
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  // CustomElevatedButton(
                                  //     child: Text("ACCEPT"),
                                  //     fn: () {
                                  //       handleApprove();
                                  //     }),
                                  // CustomElevatedButton(
                                  //   child: Text("REJECT"),
                                  //   fn: () {
                                  //     handleReject();
                                  //   },
                                  // ),
                                  PrimaryCustomButton(
                                    child: CustomText(
                                      text: "Allow",
                                      fontSize: 16.sp,
                                    ),
                                    color: blueColor,
                                    fn: () {
                                      // routeTo("", context);
                                      handleApprove();
                                    },
                                  ),
                                  PrimaryCustomButton(
                                    child: CustomText(
                                      text: "Remove",
                                      fontSize: 16.sp,
                                    ),
                                    color: Colors.red,
                                    fn: () {
                                      handleReject();
                                    },
                                  ),
                                ],
                              )
                            : SizedBox(),
                      )
                    : SizedBox(),
              ],
            ),
          );
        },
        error: (e, st) => Center(
          child: CustomText(text: "Something went wrong"),
        ),
        loading: () => LoadingPage(),
      ),
    );
  }
}
