import 'dart:developer';

import 'package:donationapp/constant/common/NavBar/adminNavBar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/loading/loadingPage.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/drawer.dart';
import 'package:donationapp/features/Admin/NewDashboard/widgets/admin-info-card.dart';
import 'package:donationapp/features/Admin/NewDashboard/widgets/card-list.dart';
import 'package:donationapp/features/Admin/Users/widgets/detailTile.dart';
import 'package:donationapp/store/admin-dashboard/admin-dashboard.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewAdminDashboard extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final dashboardData = ref.watch(dashboardDataProvider);

    final dashboardData = ref.watch(getAllDataProvider);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AdminNavBar(title: "Dashboard"),
      ),
      drawer: Menu_Drawer(),
      body: dashboardData.when(
          data: (data) {
            final dashboardData = data['body'];
            log("DashBoard Data: $dashboardData");
            List listItem = [
              {
                "title": "Total Request",
                "value": "${dashboardData['today']['requests1']}"
              },
              {
                "title": "Total Donation",
                "value": "${dashboardData['today']['donations1']}"
              },
              {
                "title": "New Users",
                "value": "${dashboardData['today']['users1']}"
              },
              // Pending Requests data not available
              {
                "title": "Pending Requests",
                "value": "${dashboardData['today']['users1']}"
              },
              {
                "title": "Total Campaigns",
                "value": "${dashboardData['today']['campaigns1']}"
              },
            ];

            return Column(
              children: [
                Container(
                  height: 220.h,
                  margin: EdgeInsets.symmetric(
                    vertical: 15.h,
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        AdminInfoCard(
                          cardTitle: "All Time",
                          // dashboardDats: dashboardDats,
                          campaigns: "${dashboardData['all']['campaigns']}",
                          donations: "${dashboardData['all']['donations']}",
                          requests: "${dashboardData['all']['requests']}",
                          users: "${dashboardData['all']['users']}",
                        ),
                        AdminInfoCard(
                          cardTitle: "Last 7 Days",
                          campaigns: "${dashboardData['seven']['campaigns7']}",
                          donations: "${dashboardData['seven']['donations7']}",
                          requests: "${dashboardData['seven']['requests7']}",
                          users: "${dashboardData['seven']['users7']}",
                          // dashboardDats: dashboardDats,
                        ),
                        AdminInfoCard(
                          cardTitle: "Last 30 days",
                          campaigns:
                              "${dashboardData['thirty']['campaigns30']}",
                          donations:
                              "${dashboardData['thirty']['donations30']}",
                          requests: "${dashboardData['thirty']['requests30']}",
                          users: "${dashboardData['thirty']['users30']}",
                        ),
                      ],
                    ),
                  ),

                  // ListView.builder(
                  //   clipBehavior: Clip.hardEdge,
                  //   scrollDirection: Axis.horizontal,
                  //   itemCount: 4,
                  //   itemBuilder: (context, index) {
                  //     return
                  //     Container(
                  //       width: 330.w,
                  //       margin: EdgeInsets.only(right: 5.w, left: 5.w),
                  //       child: Card(
                  //         shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(12.r),
                  //         ),
                  //         color: Color(0xff710084),
                  //         child: Padding(
                  //           padding: EdgeInsets.all(10.h),
                  //           child: Column(
                  //             children: [
                  //               Container(
                  //                 padding: EdgeInsets.symmetric(
                  //                   vertical: 5.h,
                  //                 ),
                  //                 child: CustomText(
                  //                   text: "All Time",
                  //                   fontSize: 20.sp,
                  //                   fontWeight: FontWeight.w800,
                  //                   fontColor: whiteColor,
                  //                 ),
                  //               ),
                  //               DetailTile(
                  //                 title: "Total Requests",
                  //                 value:
                  //                     "${dashboardDats["requests"]["total"]}",
                  //                 fontColor: whiteColor,
                  //               ),
                  //               DetailTile(
                  //                 title: "Total Donations",
                  //                 value:
                  //                     "${dashboardDats["donations"]["total"]}",
                  //                 fontColor: whiteColor,
                  //               ),
                  //               DetailTile(
                  //                 title: "Total Volunteers",
                  //                 value:
                  //                     "${dashboardDats["requests"]["total"]}",
                  //                 fontColor: whiteColor,
                  //               ),
                  //               DetailTile(
                  //                 title: "Total Users",
                  //                 value: "${dashboardDats["users"]["total"]}",
                  //                 fontColor: whiteColor,
                  //               ),
                  //               DetailTile(
                  //                 title: "Total Campaigns",
                  //                 value: "2",
                  //                 fontColor: whiteColor,
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     );
                  //   },
                  // ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10.h),
                    padding: EdgeInsets.all(10.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.r),
                        topRight: Radius.circular(30.r),
                      ),
                      color: blueColor,
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Container(
                          height: 5.h,
                          width: 150.w,
                          margin: EdgeInsets.only(
                            bottom: 10.h,
                          ),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(63, 255, 255, 255),
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10.h),
                          child: CustomText(
                            text: "Today",
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w800,
                            fontColor: whiteColor,
                          ),
                        ),
                        Container(
                          height: 295.h,
                          child: Scrollbar(
                            thumbVisibility: true,
                            radius: Radius.circular(30.r),
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return CardList(
                                  title: listItem[index]['title'],
                                  value: listItem[index]['value'],
                                  fontColor: whiteColor,
                                );
                              },
                              itemCount: listItem.length,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
          },
          error: (error, stackTrace) =>
              CustomText(text: "Something Went Wrong"),
          loading: () => LoadingPage()),
    );
  }
}
