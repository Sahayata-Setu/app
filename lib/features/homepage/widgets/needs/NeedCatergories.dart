import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NeedCategories extends StatelessWidget {
  final numb;
  final title;
  final icon;
  final colorP;
  final colorS;
  NeedCategories(
      {required this.numb,
      required this.title,
      required this.icon,
      required this.colorP,
      required this.colorS});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        routeTo("/needs/details/:id", context);
      }, //go to requests/:catergories,
      child: Container(
        margin: EdgeInsets.only(right: 10.w),
        // padding: const EdgeInsets.all(10),
        width: 80.w,
        height: 50.h,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [],
            borderRadius: BorderRadius.circular(10.w)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                decoration: BoxDecoration(
                    color: colorP, borderRadius: BorderRadius.circular(5.w)),
                height: 55.h,
                width: 55.w,
                padding: EdgeInsets.all(5.w),
                child: Icon(
                  icon,
                  color: colorS,
                )),
            Text(
              numb.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
            ),
            CustomText(
              text: title,
              fontSize: 15.sp,
            )
          ],
        ),
      ),
    );
  }
}
