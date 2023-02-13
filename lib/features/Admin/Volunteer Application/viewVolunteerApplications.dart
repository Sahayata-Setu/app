import 'dart:developer';

import 'package:donationapp/constant/common/NavBar/adminNavBar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/User/user-profile-dark-image.dart';
import 'package:donationapp/constant/common/loading/loadingPage.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/drawer.dart';
import 'package:donationapp/features/Admin/Volunteer%20Application/store/viewvolunteer.store.dart';
import 'package:donationapp/features/Admin/Volunteer%20Application/widgets/volunteerCard.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/store/admin-dashboard/admin-dashboard.store.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icon.dart';

class ViewVolunteerApplications extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCategory = ref.watch(selectedCategoryVolunterProv);

    final volunteerDet = selectedCategory == "All"
        ? ref.watch(getAllVolunteerProvider)
        : ref.watch(pendingVolunteerProvider);

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AdminNavBar(title: "Volunteer Applications"),
        ),
        drawer: Menu_Drawer(),
        body: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    ref.read(selectedCategoryVolunterProv.notifier).state =
                        "All";
                  },
                  child: Container(
                    height: 30.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                        color: selectedCategory == "All"
                            ? Colors.blue
                            : Colors.white,
                        borderRadius: BorderRadius.circular(18)),
                    child: Center(
                        child: CustomText(
                      text: "All Volunteers",
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                ),
                InkWell(
                  onTap: () {
                    ref.read(selectedCategoryVolunterProv.notifier).state =
                        "pending";
                  },
                  child: Container(
                    height: 30.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                        color: selectedCategory == "pending"
                            ? Colors.blue
                            : Colors.white,
                        borderRadius: BorderRadius.circular(18)),
                    child: Center(
                        child: CustomText(
                      text: "Volunteers Request",
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                )
              ],
            ),
            Container(
              height: ScreenUtil().screenHeight - 200.h,
              child: volunteerDet.when(
                data: (data) {
                  final volunteerDetails = data['body'];
                  log("Volunteer : $volunteerDetails");

                  return Container(
                      margin: EdgeInsets.all(10.h),
                      child: ListView.builder(
                        itemCount: volunteerDetails.length,
                        itemBuilder: (ctx, index) {
                          return InkWell(
                            child: VolunteerCard(
                              name:
                                  "${volunteerDetails[index]['firstName']} ${volunteerDetails[index]['lastName']}",
                            ),
                            onTap: () {
                              selectedCategory == "All"
                                  ? routeTo(
                                      "/volunteer-application-details/${volunteerDetails[index]["_id"]}",
                                      context)
                                  : routeTo(
                                      "/volunteer-application-details/${volunteerDetails[index]["_id"]}",
                                      context);
                            },
                          );
                        },
                      ));
                },
                error: (err, st) => CustomText(
                  text: "Something went wrong",
                ),
                loading: () => LoadingPage(),
              ),
            ),
          ],
        ));
  }
}
