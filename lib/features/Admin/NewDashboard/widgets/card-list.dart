import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/Admin/Users/widgets/detailTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardList extends StatelessWidget {
  const CardList({
    super.key,
    required this.title,
    required this.value,
    required this.fontColor,
  });

  final title;
  final value;
  final fontColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5.h),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        color: Color.fromARGB(63, 255, 255, 255),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
          ),
          child: DetailTile(
            title: title,
            value: value,
            fontColor: fontColor,
          ),
        ),
      ),
    );
  }
}
