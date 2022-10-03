import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserProfileImage extends StatelessWidget {
  const UserProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        backgroundColor: Color(0xff189AB4),
        radius: 40.r,
        child: Image.asset(
          "assets/images/profileicon.png",
          height: 35.h,
        ),
      ),
    );
  }
}
