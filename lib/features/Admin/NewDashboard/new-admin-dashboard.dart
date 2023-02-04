import 'package:donationapp/constant/common/NavBar/adminNavBar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/drawer.dart';
import 'package:donationapp/features/Admin/NewDashboard/widgets/card-list.dart';
import 'package:donationapp/features/Admin/Users/widgets/detailTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewAdminDashboard extends StatelewssWidget {
  @override
  Widget build(BuildContext context) {
    List listItem = [
      {"title": "Total Request", "value": "99"},
      {"title": "Total Donation", "value": "99"},
      {"title": "New Users", "value": "99"},
      {"title": "New Volunteers", "value": "99"},
      {"title": "Pending Requests", "value": "99"},
      {"title": "Total Campaigns", "value": "99"},
    ];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AdminNavBar(title: "Dashboard"),
      ),
      drawer: Menu_Drawer(),wh
      body: Column(
        children: [
          Container(
            height: 250.h,
            margin: EdgeInsets.symmetric(
              vertical: 15.h,
              // horizontal: 10.h,
            ),
            child: ListView.builder(
              clipBehavior: Clip.hardEdge,
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (c, i) {
                return Container(
                  width: 330.w,
                  margin: EdgeInsets.only(right: 5.w, left: 5.w),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    color: Color(0xff710084),
                    child: Padding(
                      padding: EdgeInsets.all(10.h),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 5.h,
                            ),
                            child: CustomText(
                              text: "All Time",
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w800,
                              fontColor: whiteColor,
                            ),
                          ),
                          DetailTile(
                            title: "Total Requests",
                            value: "2999",
                            fontColor: whiteColor,
                          ),
                          DetailTile(
                            title: "Total Donations",
                            value: "29",
                            fontColor: whiteColor,
                          ),
                          DetailTile(
                            title: "New Volunteers",
                            value: "2",
                            fontColor: whiteColor,
                          ),
                          DetailTile(
                            title: "New Users",
                            value: "2",
                            fontColor: whiteColor,
                          ),
                          DetailTile(
                            title: "Total Campaigns",
                            value: "2",
                            fontColor: whiteColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
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
      ),
    );
  }
}
