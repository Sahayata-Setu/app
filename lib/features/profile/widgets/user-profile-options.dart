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
            top: kPadding.h + 10.h,
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "assets/images/${imageName}.png",
                color: blackColor,
                height: 25.h,
              ),
              SizedBox(
                width: 40.w,
              ),
              CustomText(
                text: "${text}",
                fontColor: blackColor,
                fontSize: 18.sp,
              )
            ],
          ),
        ),
      ],
    );
  }
}
