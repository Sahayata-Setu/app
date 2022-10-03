import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserProfileOptions extends StatelessWidget {
  const UserProfileOptions({super.key, this.imageName, this.text});

  final imageName;
  final text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(
            top: kPadding.h + 20.h,
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "assets/images/${imageName}.png",
                height: 25.h,
              ),
              SizedBox(
                width: 50.w,
              ),
              CustomText(
                text: "${text}",
                fontColor: whiteColor,
                fontSize: 20.sp,
              )
            ],
          ),
        ),
      ],
    );
  }
}
