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

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Future.delayed(Duration(seconds: 3), () {
    //   replaceRouteTo("/", context);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: blueColor,
        height: ScreenUtil().scaleHeight,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Center(
                    child: CircleAvatar(
                  radius: 50,
                  child: Image.asset("assets/images/logo.png"),
                ))
              ],
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
