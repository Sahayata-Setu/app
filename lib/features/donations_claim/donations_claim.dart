import 'dart:developer';

import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/GoogleButtomNavBar/GoogleButtomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';

import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/donations_claim/store/donations_claim.store.dart';
import 'package:donationapp/features/donations_claim/widgets/donations_claimcard.dart';
import 'package:donationapp/helpers/time.dart';
import 'package:donationapp/store/account-setting/account.setting.store.dart';
import 'package:donationapp/utils/store-service/language.store.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/common/loading/loadingPage.dart';

class DonationsClaim extends ConsumerStatefulWidget {
  const DonationsClaim({super.key});

  @override
  ConsumerState<DonationsClaim> createState() => _DonationsClaimState();
}

class _DonationsClaimState extends ConsumerState<DonationsClaim> {
  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    final donations = ref.watch(getAllDonationsByUser(StorageService.getId()));

    //Get all requests for donations and requests
    final donationClaimRequests = ref.watch(donationClaimRequestsProvider(""));
    log("All donations by userid: ${donationClaimRequests}");
    //Selected Category
    final selectedCategory = ref.watch(selectedCategoryProvider);

    return App(
      component: Container(
        padding: EdgeInsets.all(kPadding.h),
        child: donationClaimRequests.when(
            data: (data) {
              // log("Datas: ${data['body'][0]}");
              final allRequests = data['body'];
              return Column(
                children: [
                  Container(
                    height: 40,
                    // decoration: BoxDecoration(
                    //   color: Colors.amber,
                    // ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            ref.read(selectedCategoryProvider.notifier).state =
                                "donation";
                          },
                          child: Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              color: selectedCategory == 'donation'
                                  ? blueColor
                                  : backgroundColor,
                              borderRadius: BorderRadius.circular(18.r),
                            ),
                            // padding: EdgeInsets.all(kPadding.h),
                            child: Center(
                              child: CustomText(
                                text: "Dontaion",
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                fontColor: selectedCategory == 'donation'
                                    ? whiteColor
                                    : blackColor,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            ref.read(selectedCategoryProvider.notifier).state =
                                "claim";
                          },
                          child: Container(
                            height: 40,
                            width: 100,
                            // padding: EdgeInsets.all(kPadding.h),
                            decoration: BoxDecoration(
                              color: selectedCategory == 'claim'
                                  ? blueColor
                                  : backgroundColor,
                              borderRadius: BorderRadius.circular(18.r),
                            ),
                            child: Center(
                              child: CustomText(
                                text: "Claims",
                                fontColor: selectedCategory == 'claim'
                                    ? whiteColor
                                    : blackColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  ListView.builder(
                    controller: scrollController,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return DonationsClaimCard(
                        donorId: "${allRequests[index]['donorId']}",
                        donor_name: "${allRequests[index]['donor_name']}",
                        reciever_name: "${allRequests[index]['reciever_name']}",
                        recieverId: "${allRequests[index]['donorId']}",
                        donor_status: "${allRequests[index]['donor_status']}",
                        reciever_status:
                            "${allRequests[index]['reciever_status']}",
                        donation: "${allRequests[index]['donationTitle']}",
                        donationPostId:
                            "${allRequests[index]['donationPostId']}",
                        donationDate:
                            "${convertToAgo(allRequests[index]['createdAt'])}",
                        // donationStatus: "${allRequests[index]['status']}",
                      );
                    },
                    itemCount: allRequests.length,
                  )
                ],
              );
            },
            error: (e, h) => Text("Error"),
            loading: () => LoadingPage()),
        // Column(
        //   children: [
        // DonationsClaimCard(
        //   categoryName: "Hello",
        //   donationDate: "2022-12-28",
        //   donationStatus: "Claimed",
        // )
        //   ],
        // ),
      ),
      appbar: NavBar(
        title: translation(context).donations_claim,
        // route: "/homepage",
        showBadge: false,
      ),
      bottomNavBar: const GoogleButtomNavBar(showBottomNavBar: false),
      isAdmin: false,
    );
  }
}
