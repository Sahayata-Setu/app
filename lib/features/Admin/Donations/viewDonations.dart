import 'dart:developer';

import 'package:donationapp/constant/common/NavBar/adminNavBar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/horizontal-line/horizontal-line.dart';
import 'package:donationapp/constant/common/loading/loadingPage.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/drawer.dart';
import 'package:donationapp/features/Admin/Donations/widgets/donationTile.dart';
import 'package:donationapp/features/Admin/Users/widgets/userCard.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/routes/app.router.gr.dart';
import 'package:donationapp/store/admin-dashboard/admin-dashboard.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icon.dart';

class ViewDonations extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allDonations = ref.watch(getAllDonationsProvider);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AdminNavBar(title: "Donations"),
      ),
      drawer: Menu_Drawer(),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.refresh(getAllDonationsProvider);
        },
        child: Container(
          child: allDonations.when(
              data: (data) {
                final donations = data['body'];
                log("All Donations: ${donations}");
                return Container(
                  padding: EdgeInsets.all(10.h),
                  // color: whiteColor,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return InkWell(
                        child: DonationTile(
                          status: donations[index]['status'],
                          donerName: donations[index]['donor_name'],
                          donationCategory: donations[index]['category'],
                          donerLocation: donations[index]['city'],
                        ),
                        onTap: () {
                          // routeTo("/donatedDetails", context);
                          routePush(
                              DonationDetailRoute(id: donations[index]['_id']),
                              context);
                        },
                      );
                    },
                    itemCount: donations.length,
                  ),
                );
              },
              error: (e, st) => CustomText(text: "Something Went Wrong"),
              loading: () => LoadingPage()),
        ),
      ),
    );
  }
}
