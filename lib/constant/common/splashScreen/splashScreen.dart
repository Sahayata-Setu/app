// //import "io.flutter.embedding.android.FlutterActivity";

// import 'package:donationapp/app.dart';
// import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/app.dart';
import 'package:donationapp/auth/auth_check/auth_check.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Future.delayed(Duration(seconds: 3), () {
  //     replaceRouteTo("/", context);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: blueColor,
        height: ScreenUtil().scaleHeight,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 200.h),
              child: Center(
                child: Container(
                  height: 100.h,
                  child: Image.asset("assets/images/logo.png"),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              text: "Sahayata Setu",
              fontColor: blueBackgroundColor,
              fontSize: 26.sp,
            ),
            // SizedBox(
            //   height: 20.h,
            // ),
            CustomText(
              text: "Say yes to donation",
              fontColor: blueBackgroundColor,
              fontSize: 12.sp,
            )
          ],
        ),
      ),
    );
  }
}

// class Splash extends StatefulWidget {
//   SplashState createState() => SplashState();
// }

// class SplashState extends State<Splash> {
//   initState() {
//     super.initState();
//   }

//   Widget build(context) {
//     print("splash");
//     return App(
//       appbar: NavBar(showBadge: false),
//       isAdmin: false,
//       bottomNavBar: BottomNavBar(showBottomNavBar: false),
//       component: AnimatedSplashScreen(
//           duration: 6000,
//           splash: AssetImage(
//             "assets/images/logo.png",
//           ),
//           nextScreen: AuthCheckWidget(),
//           splashTransition: SplashTransition.fadeTransition,
//           pageTransitionType: PageTransitionType.scale,
//           backgroundColor: Colors.blue),
//     );
//   }
// }
