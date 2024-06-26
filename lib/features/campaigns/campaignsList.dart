import 'dart:developer';

import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/GoogleButtomNavBar/GoogleButtomNavBar.dart';
import 'package:donationapp/constant/common/ImageCarousel/ImageOverlay.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/loading/loadingPage.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/campaigns/store/campaign-store.dart';
import 'package:donationapp/features/campaigns/widgets/campaignCards.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CampaignsList extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final approvedCampagins = ref.watch(getApprovedCampaignsProvider(""));
    log("Campaigns: $approvedCampagins");
    return App(
      appbar: NavBar(
        showBadge: false,
        isAdmin: false,
        title: "Campaigns",
        isMainPage: false,
      ),
      component: Container(
        padding: EdgeInsets.only(
          bottom: 120.h,
          top: kPadding.h,
          left: kPadding.w,
          right: kPadding.w,
        ),
        height: ScreenUtil().screenHeight,
        child: approvedCampagins.when(
          data: (data) {
            final datas = data['body'];
            log("All campaigns ${datas}");
            return RefreshIndicator(
              onRefresh: () async {
                ref.refresh(getApprovedCampaignsProvider(""));
              },
              child: ListView.builder(
                  // scrollDirection: Axis.horizontal,
                  itemCount: datas.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        routeTo("/campaigns/${datas[index]['_id']}", context);
                      },
                      child: CampaignCards(
                        volunteerId: "${datas[index]['volunteer_id']}",
                        volunteerName: "${datas[index]['volunteer_name']}",
                        // image: "${datas['images'][0] ?? 0}",
                        image:
                            "${datas[index]['images'].length == 0 ? "" : datas[index]["images"][0]}",
                        // location: "${datas[index]['city']}",
                        location: "",
                        title: "${datas[index]['title']}",
                      ),
                    );
                  }),
            );
          },
          error: (e, h) => CustomText(text: "Error Occured"),
          loading: () => LoadingPage(),
        ),
      ),
      bottomNavBar: GoogleButtomNavBar(showBottomNavBar: true),
      isAdmin: false,
    );
  }
}
