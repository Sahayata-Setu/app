import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardCards extends StatelessWidget {
  const DashboardCards(
      {super.key,
      required this.title,
      required this.number,
      required this.color});
  final title;
  final number;
  final color;
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 20,
      // height: 20,
      decoration: BoxDecoration(
          color: blueColor, borderRadius: BorderRadius.circular(20)),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            text: number.toString(),
            fontColor: whiteColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w800,
          ),
          CustomText(
            text: title.toString(),
            fontSize: 15.sp,
            fontColor: whiteColor,
            fontWeight: FontWeight.bold,
          )
        ],
      ),
    );
  }
}
