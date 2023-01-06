import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/GoogleButtomNavBar/GoogleButtomNavBar.dart';
import 'package:donationapp/constant/common/ImageCarousel/ImageOverlay.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/button/cusotm-button.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/campaigns/widgets/campiganDetailsListings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CampiagnDetails extends StatelessWidget {
  const CampiagnDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return App(
      appbar: NavBar(
        showBadge: true,
        isAdmin: false,
        title: "Campaign Detail",
        isMainPage: false,
      ),
      component: Container(
        constraints: BoxConstraints(
            minHeight: ScreenUtil().screenHeight + kPadding.h,
            maxHeight: 800.h),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: kPadding.h),
              child: ImageOverlay(
                  image: "assets/images/veg.png",
                  title: "Save the children",
                  location: "Rajkot",
                  height: 250.h,
                  width: double.infinity,
                  border_radius: false,
                  borderTop: true,
                  showShareBtn: true),
            ),
            CampaignDetailsListings(),
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
      ),
      bottomNavBar: const GoogleButtomNavBar(
        showBottomNavBar: false,
      ),
      isAdmin: false,
    );
  }
}
