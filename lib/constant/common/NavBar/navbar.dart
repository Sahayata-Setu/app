import 'package:expensetracker/constant/common/Text/custom-text.dart';
import 'package:expensetracker/constant/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: blueColor,
        title: CustomText(
          text: "SIGN UP",
          fontSize: 18.sp,
        ));
  }
}
