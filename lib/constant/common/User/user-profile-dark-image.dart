import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserProfileDarkImage extends StatelessWidget {
  const UserProfileDarkImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        "assets/images/profile.png",
        height: 40.h,
      ),
    );
  }
}
