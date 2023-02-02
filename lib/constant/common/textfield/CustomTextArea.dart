import 'package:dartz/dartz.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextArea extends StatelessWidget {
  const CustomTextArea({
    super.key,
    required this.text,
    this.value,
    this.hint,
    this.fontSize,
    this.contentPadding,
    this.isPhoneNo,
  });
  final value;
  final hint;
  final String text;
  final fontSize;
  final isPhoneNo;
  final contentPadding;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10.w, top: 10.h),
          child: CustomText(
            text: text,
            fontColor: blackColor,
            fontSize: fontSize ?? 16.sp,
          ),
        ),
        Container(
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: contentPadding == null
                  ? EdgeInsets.all(10.h)
                  : EdgeInsets.all(contentPadding),
              prefixText: isPhoneNo == true ? "+91" : null,
              // prefixStyle: ,
              // prefix: Text("+91"),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.r),
              ),
              hintText: value == null ? hint : null,
            ),
            style: TextStyle(
              fontSize: 16.sp,
            ),
            initialValue: value ?? null,
          ),
        ),
      ],
    );
  }
}
