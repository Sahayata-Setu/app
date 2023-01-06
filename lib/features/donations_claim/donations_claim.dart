import 'dart:developer';

import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';

import 'package:donationapp/constant/kconstant.dart';
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
    // log("All donations by userid: ${donations}");

    return App(
      component: Container(
        padding: EdgeInsets.all(kPadding.h),
        child: donations.when(
            data: (data) {
              log("Datas: ${data['body'][0]}");
              final allDonations = data['body'];
              return Column(children: [
                ListView.builder(
                  controller: scrollController,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return DonationsClaimCard(
                      categoryName: "${allDonations[index]['category']}",
                      donationDate:
                          "${convertToAgo(allDonations[index]['createdAt'])}",
                      donationStatus: "${allDonations[index]['status']}",
                    );
                  },
                  itemCount: allDonations.length,
                )
              ]);
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
      bottomNavBar: BottomNavBar(showBottomNavBar: false),
      isAdmin: false,
    );
  }
}
