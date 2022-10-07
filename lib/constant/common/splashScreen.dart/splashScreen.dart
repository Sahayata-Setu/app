//import "io.flutter.embedding.android.FlutterActivity";

import 'package:donationapp/app.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
