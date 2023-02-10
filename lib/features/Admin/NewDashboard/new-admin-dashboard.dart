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
    final dashboardData = ref.watch(dashboardDataProvider);
    List listItem = [
      {"title": "Total Request", "value": "99"},
      {"title": "Total Donation", "value": "99"},
      {"title": "New Users", "value": "99"},
      {"title": "New Volunteers", "value": "99"},
      {"title": "Pending Requests", "value": "99"},
      {"title": "Total Campaigns", "value": "9"},
    ];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AdminNavBar(title: "Dashboard"),
      ),
      drawer: Menu_Drawer(),
      body: dashboardData.when(
          data: (data) {
            final dashboardDats = data['body'];
            log("DashBoard Data: $dashboardDats");
            return Column(
              children: [
                Container(
                  height: 250.h,
                  margin: EdgeInsets.symmetric(
                    vertical: 15.h,
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        AdminInfoCard(
                          cardTitle: "All Time",
                          dashboardDats: dashboardDats,
                          requests: dashboardDats['requests']['total'],
                          donations: dashboardDats['donations']['total'],
                          volunteers: dashboardDats['volunteers']['total'],
                          users: dashboardDats['users']['total'],
                        ),
                        AdminInfoCard(
                          cardTitle: "Pending",
                          dashboardDats: dashboardDats,
                          requests: dashboardDats['requests']['pending'],
                          donations: dashboardDats['donations']['pending'],
                          volunteers: dashboardDats['volunteers']['pending'],
                          users: dashboardDats['users']['total'],
                        ),
                        AdminInfoCard(
                          cardTitle: "Approved",
                          dashboardDats: dashboardDats,
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
                          height: 275.h,
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
