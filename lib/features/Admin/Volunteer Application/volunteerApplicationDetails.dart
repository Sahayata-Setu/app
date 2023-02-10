import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:donationapp/constant/common/NavBar/adminNavBar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/button/primary-custom-botton.dart';
import 'package:donationapp/constant/common/horizontal-line/horizontal-line.dart';
import 'package:donationapp/constant/common/loading/loadingPage.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/drawer.dart';
import 'package:donationapp/features/Admin/Users/widgets/detailTile.dart';
import 'package:donationapp/features/Admin/Volunteer%20Application/store/viewvolunteer.store.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/store/admin-dashboard/admin-dashboard.store.dart';
import 'package:donationapp/store/single-user/single-user.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VolunteerApplicationDetails extends ConsumerWidget {
  VolunteerApplicationDetails(
      {super.key, @PathParam("userId") required this.userId});

  // VolunteerApplicationDetails({@PathParam("userId") @required this.userId});
  final userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCategory = ref.watch(selectedCategoryVolunterProv);
    // final
    final singleUser = selectedCategory == "All"
        ? ref.watch(singleUserDataProvider(userId))
        : ref.watch(getAllSingleVolunteerApplicationProvider(userId));
    // log("UserID: ${userId}");
    // log("messageE: ${singleUser}");
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AdminNavBar(title: "Application Details"),
      ),
      drawer: Menu_Drawer(),
      body: singleUser.when(
          data: (data) {
            final userData = data['body'];
            return Container(
              margin: EdgeInsets.all(20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DetailTile(
                    title: "Name",
                    value: selectedCategory == "All"
                        ? "${userData['firstName']} ${userData['lastName']}"
                        : "${userData['application']['firstName']} ${userData['application']['lastName']}",
                  ),
                  DetailTile(
                    title: "Contact",
                    value: selectedCategory == "All"
                        ? "${userData['phoneNo']} "
                        : "${userData['user']['phoneNo']}",
                  ),
                  DetailTile(
                    title: "Email",
                    value: selectedCategory == "All"
                        ? "${userData['email']} "
                        : "${userData['user']['email']}",
                  ),
                  CustomText(
                    text: "ID Card",
                    fontWeight: FontWeight.w500,
                    fontColor: textColor,
                    fontSize: 16.sp,
                  ),

                  // * Display Image here

                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15.h),
                    child: HorizontalLine(
                      color: blueColor,
                    ),
                  ),
                  selectedCategory == "pending"
                      ? Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(bottom: 15.h),
                              child: CustomText(
                                text: "Reason for apply",
                                fontWeight: FontWeight.w500,
                                fontColor: textColor,
                                fontSize: 16.sp,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 15.h),
                              child: CustomText(
                                text: "${userData['application']['reason']}",
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        )
                      : Container(),

                  selectedCategory == "pending"
                      ? Container(
                          margin: EdgeInsets.only(top: 10.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              PrimaryCustomButton(
                                color: blueColor,
                                fn: () {
                                  routeTo("", context);
                                },
                                child: CustomText(
                                  text: "Accept",
                                  fontSize: 16.sp,
                                ),
                              ),
                              PrimaryCustomButton(
                                child: CustomText(
                                  text: "Remove",
                                  fontSize: 16.sp,
                                ),
                                color: Colors.red,
                                fn: () {
                                  routeTo("", context);
                                },
                              ),
                            ],
                          ),
                        )
                      : Container()
                ],
              ),
            );
          },
          error: (err, st) => CustomText(text: "Something Went Wrong"),
          loading: () => LoadingPage()),
    );
  }
}
