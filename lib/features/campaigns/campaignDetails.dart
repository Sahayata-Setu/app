import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/GoogleButtomNavBar/GoogleButtomNavBar.dart';
import 'package:donationapp/constant/common/ImageCarousel/ImageOverlay.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/button/cusotm-button.dart';
import 'package:donationapp/constant/common/loading/loadingPage.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/campaigns/widgets/campiganDetailsListings.dart';
import 'package:donationapp/store/homepage/homepage.store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CampiagnDetails extends ConsumerWidget {
  const CampiagnDetails({super.key, @PathParam("id") this.id});
  final id;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final campaignData = ref.watch(singleCampaignsByIdProvider(id));
    log("THis is campaign : ${id}");
    // log
    return App(
      appbar: NavBar(
        showBadge: true,
        isAdmin: false,
        title: "Campaign Detail",
        isMainPage: false,
      ),
      component: campaignData.when(
          data: (dat) {
            final data = dat['body'];
            return Container(
              constraints: BoxConstraints(
                  minHeight: ScreenUtil().screenHeight + kPadding.h,
                  maxHeight: 800.h),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: kPadding.h),
                    child: ImageOverlay(
                        image: data['images'][0],
                        title: "${data['title']}",
                        location: "${data['city']}",
                        height: 250.h,
                        width: double.infinity,
                        border_radius: false,
                        borderTop: true,
                        showShareBtn: true),
                  ),
                  CampaignDetailsListings(
                    data: data,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: kPadding.h),
                    alignment: Alignment.center,
                    child: CustomElevatedButton(
                        child: Text("Donate".toUpperCase()),
                        fn: () {}, //go to donation
                        width: 150.w),
                  )
                ],
              ),
            );
          },
          error: (e, st) => CustomText(text: "Error Occured"),
          loading: () => LoadingPage()),
      bottomNavBar: const GoogleButtomNavBar(
        showBottomNavBar: false,
      ),
      isAdmin: false,
    );
  }
}
