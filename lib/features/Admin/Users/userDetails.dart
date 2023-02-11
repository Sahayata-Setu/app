import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:donationapp/constant/common/NavBar/adminNavBar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/loading/loadingPage.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/drawer.dart';
import 'package:donationapp/features/Admin/Users/widgets/detailTile.dart';
import 'package:donationapp/store/single-user/single-user.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:line_icons/line_icon.dart';

class UserDetails extends ConsumerWidget {
  const UserDetails({super.key, @PathParam("userId") required this.userId});
  final userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userDetails = ref.watch(singleUserDataProvider(userId));
    log("message: ${userDetails}");

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AdminNavBar(title: "Users Details"),
      ),
      drawer: Menu_Drawer(),
      body: Container(
        padding: EdgeInsets.fromLTRB(10.h, 5.h, 10.h, 10.h),
        child: userDetails.when(
            data: (data) {
              final userData = data['body'];
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: LineIcon.user(
                      size: 50.h,
                    ),
                  ),
                  Card(
                    child: Container(
                      margin: EdgeInsets.all(10.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DetailTile(
                            title: "Full Name",
                            value:
                                "${userData['firstName']} ${userData['lastName']}",
                          ),
                          DetailTile(
                              title: "User Type", value: "${userData["role"]}"),
                          DetailTile(
                              title: "Status",
                              value:
                                  "${userData['isVerified'] == false ? "Not Verified" : "Verified"}"),
                          DetailTile(
                              title: "Contact",
                              value: "${userData["phoneNo"]}"),
                          DetailTile(
                              title: "Email", value: "${userData["email"]}"),
                          DetailTile(title: "Donations", value: "4"),
                          DetailTile(title: "Benefitted", value: "3"),
                          DetailTile(title: "Campaign", value: "0"),
                          DetailTile(
                              title: "City", value: "${userData["city"]}"),
                          DetailTile(
                              title: "Date",
                              value:
                                  "${DateFormat('yyyy-MM-dd').format(DateTime.parse(userData['createdAt']))}"),
                          DetailTile(title: "No of Report", value: "2"),
                        ],
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //   onPressed: () {},
                  //   style: ButtonStyle(
                  //     backgroundColor:
                  //         MaterialStateProperty.all<Color>(blueColor),
                  //     padding: MaterialStateProperty.all(
                  //       EdgeInsets.symmetric(
                  //         horizontal: 20.h,
                  //         vertical: 5.w,
                  //       ),
                  //     ),
                  //     shape: MaterialStateProperty.all(
                  //       RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(30.r),
                  //       ),
                  //     ),
                  //   ),
                  //   child: CustomText(
                  //     text: "Verify",
                  //     fontColor: whiteColor,
                  //     fontSize: 16.sp,
                  //   ),
                  // )
                ],
              );
            },
            error: (e, st) => CustomText(text: "Something went wrong"),
            loading: () => LoadingPage()),
      ),
    );
  }
}
