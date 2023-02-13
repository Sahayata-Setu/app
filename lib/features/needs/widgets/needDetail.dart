import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:donationapp/constant/common/GoogleButtomNavBar/GoogleButtomNavBar.dart';
import 'package:donationapp/constant/common/Icon/custom-icon.dart';
import 'package:donationapp/constant/common/button/primary-custom-botton.dart';
import 'package:donationapp/constant/common/horizontal-line/horizontal-line.dart';
import 'package:donationapp/constant/common/loading/loadingPage.dart';
import 'package:donationapp/features/Admin/Requests/widgets/userData.dart';
import 'package:donationapp/features/Admin/Users/widgets/detailTile.dart';
import 'package:donationapp/features/new-message/chat-detail.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/store/admin-dashboard/admin-dashboard.store.dart';
import 'package:donationapp/store/homepage/homepage.store.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:donationapp/constant/common/ImageCarousel/image_carousel.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:line_icons/line_icon.dart';

import '../../../../app.dart';
import '../../../../constant/common/NavBar/navbar.dart';

class NeedDetail extends ConsumerWidget {
  const NeedDetail({super.key, this.data, @PathParam('id') this.id});
  final data;
  final id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getUserType = StorageService.getuserType();
    final data1 = ref.watch(singleNeedDataProvider(id));

    // final userId = StorageService.getId();

    final approveProv = ref.watch(approveVolunteerProvider);

    handleApprove() {
      try {
        final resp = approveProv.approveRequest(id, "approve").then((value) {
          log("This is value : ${value}");
          String mess = value['message'];
          ref.refresh(pendingRequestProvider);
          final snackBar = SnackBar(
            content: Text("$mess"),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }).catchError((e) {
          final snackBar = SnackBar(
            content: Text("Request already Approved"),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          log("this is error from resp ${e}");
        });
      } catch (e) {
        log("this is error from resp ${e}");
      }
    }

    handleReject() {
      try {
        final resp = approveProv.approveRequest(id, "reject");
        ref.refresh(pendingRequestProvider);
        const snackBar = SnackBar(
          content: Text('Request sucessfully rejected'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        // log(resp);
      } catch (e) {
        log("this is error from resp ${e}");
      }
    }

    // final singleData = data['body'];
    // log("this is from data ${data['quantity']}");

    // DateFormat('yyyy-MM-dd').format(selectedDate)
    // final date = singleData['pickupDate'].split("T");

    return App(
      component: data1.when(
        data: (data) {
          // log("this is id -------------------------- ${id}");
          final singleData = data['body'];
          final date = singleData['pickupDate'].split("T");
          log("${singleData}");

          return Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(bottom: kMargin.h),
              // height: ScreenUtil().screenHeight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ImageCarousel(
                  //   data: data,
                  // ),
                  Padding(
                    padding: EdgeInsets.all(kPadding1.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 35.h,
                          margin: EdgeInsets.only(bottom: 10.h),
                          child: UserData(
                            userCity: "${singleData['city']}",
                            userName: "${singleData['beneficiary_name']}",
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // ListTile(
                              //   title: CustomText(
                              //     text: "Name",
                              //     fontColor: Colors.grey.shade600,
                              //   ),
                              //   trailing: CustomText(
                              //     text: "${singleData['beneficiary_name']}",
                              //     fontWeight: FontWeight.w500,
                              //     fontSize: 15.sp,
                              //   ),
                              // ),
                              DetailTile(
                                title: "Title",
                                value: "${singleData['title']}",
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

                              DetailTile(
                                title: "Category",
                                value: "${singleData['category']}",
                              ),

                              // ListTile(
                              //   title: CustomText(
                              //     text: "Quantity",
                              //     fontColor: Colors.grey.shade600,
                              //   ),
                              //   trailing: CustomText(
                              //     text:
                              //         "${singleData['quantity']}", //"${singleData['quantity']}",
                              //     fontWeight: FontWeight.w500,
                              //     fontSize: 15.sp,
                              //   ),
                              // ),
                              DetailTile(
                                title: "Quantity",
                                value: "${singleData['quantity']}",
                              ),

                              // ListTile(
                              //   title: CustomText(
                              //     text: "Created at",
                              //     fontColor: Colors.grey.shade600,
                              //   ),
                              //   trailing: CustomText(
                              //     text:
                              //         "${date[0]}", //"${singleData['pickupDetails']}",
                              //     // singleData['pickupDate']
                              //     fontWeight: FontWeight.w500,
                              //     fontSize: 15.sp,
                              //   ),
                              // ),

                              DetailTile(
                                title: "Created at",
                                value: "${date[0]}",
                              ),

                              // ListTile(
                              //   title: CustomText(
                              //     text: "Pickup Details",
                              //     fontColor: Colors.grey.shade600,
                              //   ),
                              //   trailing: CustomText(
                              //     text: "${singleData['pickupDetails']}",
                              //   ),
                              // ),

                              DetailTile(
                                title: "Pickup Details",
                                value: "${singleData['pickupDetails']}",
                              ),

                              // ListTile(
                              //     title: CustomText(
                              //       text: "Contact Beneficiary",
                              //       fontColor: Colors.grey.shade600,
                              //     ),
                              //     trailing: InkWell(
                              //       onTap: () {
                              //         Navigator.push(context,
                              //             MaterialPageRoute(builder: (context) {
                              //           return ChatDetailPage(
                              //             name: singleData['beneficiary_name'],
                              //             // sender: senderId,
                              //             reciever: singleData['beneficiary_id'],
                              //           );
                              //         }));
                              //       },
                              //       child: CustomIcon(
                              //         icon: Icons.message,
                              //         color: blueColor,
                              //       ),
                              //     )),

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

                              Container(
                                margin:
                                    EdgeInsets.only(bottom: 10.h, top: 10.h),
                                child: HorizontalLine(
                                  color: blueColor,
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(bottom: 10.h),
                                child: CustomText(
                                  text: "Description",
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              CustomText(
                                text: "${singleData['description']}",
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                fontColor: textColor,
                              ),

                              Container(
                                margin:
                                    EdgeInsets.only(bottom: 10.h, top: 20.h),
                                child: HorizontalLine(
                                  color: blueColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Container(
                        //   margin: EdgeInsets.only(top: 10.h),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //     children: [
                        //       PrimaryCustomButton(
                        //         child: CustomText(
                        //           text: "Allow",
                        //           fontSize: 16.sp,
                        //         ),
                        //         color: blueColor,
                        //         fn: () {
                        //           routeTo("", context);
                        //         },
                        //       ),
                        //       PrimaryCustomButton(
                        //         child: CustomText(
                        //           text: "Remove",
                        //           fontSize: 16.sp,
                        //         ),
                        //         color: Colors.red,
                        //         fn: () {
                        //           routeTo("", context);
                        //         },
                        //       ),
                        //     ],
                        //   ),
                        // ),

                        Container(
                          alignment: Alignment.center,
                          // margin: EdgeInsets.only(top: 10.h),
                          child: PrimaryCustomButton(
                            child: CustomText(
                              text: "Contact",
                              fontSize: 16.sp,
                            ),
                            fn: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ChatDetailPage(
                                      name: singleData['beneficiary_name'],
                                      // sender: senderId,
                                      reciever: singleData['beneficiary_id'],
                                    );
                                  },
                                ),
                              );
                            },
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
                                          // CustomElevatedButton(
                                          //     child: Text("ACCEPT"),
                                          //     fn: () {
                                          //       handleApprove();
                                          //     }),
                                          // CustomElevatedButton(
                                          //     child: Text("REJECT"),
                                          //     fn: () {
                                          //       handleReject();
                                          //     }),
                                        ],
                                      )
                                    : SizedBox(),
                              )
                            : SizedBox()

                        // HorizontalLine(),
                        // SizedBox(
                        //   height: 10.h,
                        // ),
                        // Container(
                        //   alignment: Alignment.center,
                        //   child: CustomText(
                        //     fontSize: 16.sp,
                        //     text: "Description",
                        //   ),
                        // ),
                        // SizedBox(
                        //   height: 10.h,
                        // ),
                        // CustomText(
                        //   fontSize: 14.sp,
                        //   text: "${singleData['description']}",
                        // )
                      ],
                    ),
                  )
                ],
              ));
        },
        error: (error, stackTrace) => Center(
          child: Text("Something went wrong!!"),
        ),
        loading: () => LoadingPage(),
      ),
      appbar: const NavBar(
        title: "Request Detail",
        showBadge: false,
      ),
      isAdmin: false,
      bottomNavBar: const GoogleButtomNavBar(showBottomNavBar: false),
    );
    ;
  }
}
