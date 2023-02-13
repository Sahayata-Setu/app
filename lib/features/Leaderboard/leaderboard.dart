import 'dart:developer';

import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/GoogleButtomNavBar/GoogleButtomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/loading/loadingPage.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/Admin/NewDashboard/widgets/card-list.dart';
import 'package:donationapp/features/Leaderboard/store/leaderboard.store.dart';
import 'package:donationapp/utils/store-service/language.store.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Leaderboard extends ConsumerWidget {
  const Leaderboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboardData = ref.watch(leaderboardProvider);
    final userId = StorageService.getId();

    return App(
      appbar: NavBar(
        title: "Leaderboard",
        showBadge: true,
      ),
      isAdmin: false,
      bottomNavBar: const GoogleButtomNavBar(showBottomNavBar: true),
      component: dashboardData.when(
        data: (data) {
          final listData = data['body'];
          log("This is from leaderboard data ${listData}");
          return Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10.h, top: 10.h),
                  child: CustomText(
                    text: "Your Rank",
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CardList(
                  title:
                      "${listData['user']['rank']}. ${listData['user']['firstName']} ${listData['user']['lastName']}",
                  value: "${listData['user']['points']}",
                  fontColor: whiteColor,
                  backgroundColor: blueColor,
                ),
                Card(
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10.h),
                          child: CustomText(
                            text: "Leaderboard",
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 450.h,
                          child: Scrollbar(
                            // thumbVisibility: true,
                            radius: Radius.circular(30.r),
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10.w),
                              child: ListView.builder(
                                itemBuilder: (context, index) {
                                  return CardList(
                                    title:
                                        "${index + 1}.  ${listData['users'][index]['firstName']} ${listData['users'][index]['lastName']}",
                                    value:
                                        "${listData['users'][index]['points']}",
                                    fontColor: whiteColor,
                                    backgroundColor: blueColor,
                                  );
                                },
                                itemCount: 10,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        error: (e, st) => CustomText(text: "Something went wrong."),
        loading: () => LoadingPage(),
      ),
    );
  }
}
