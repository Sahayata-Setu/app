import 'package:donationapp/constant/common/Icon/custom-icon.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DonationsCategory extends StatelessWidget {
  const DonationsCategory(
      {super.key, required this.text, this.url, required this.icon});
  final text;
  final icon;
  final url;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        routeTo(url, context);
      } //link to donations/category,
      ,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              child: CustomIcon(icon: icon, color: whiteColor),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: secondaryBlue),
            ),
            CustomText(
              text: text,
              fontSize: 12.sp,
              fontColor: textColor,
            )
          ],
        ),
      ),
    );
  }
}
