import 'package:donationapp/constant/common/Text/custom-text.dart';
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
      onTap: () {}, //go to requests/:catergories,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        // padding: const EdgeInsets.all(10),
        width: 80,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [],
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                decoration: BoxDecoration(
                    color: colorP, borderRadius: BorderRadius.circular(5)),
                height: 55,
                width: 55,
                padding: const EdgeInsets.all(5),
                child: Icon(
                  icon,
                  color: colorS,
                )),
            Text(
              numb.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
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
