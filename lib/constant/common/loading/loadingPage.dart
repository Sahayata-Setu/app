import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      // padding: EdgeInsets.all(50),
      child: Column(
        children: [
          SizedBox(
            height: 100.h,
          ),
          Center(
            child: LoadingAnimationWidget.waveDots(
                color: blueBackgroundColor, size: 80.h),
          ),
          CustomText(
            text: "Loading...",
            fontSize: 20.sp,
            fontColor: blackColor,
          )
        ],
      ),
    );
  }
}
