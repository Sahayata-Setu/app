import 'dart:developer';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.ref,
      required this.label,
      required this.name,
      this.borderColor,
      this.lines,
      this.focusBorder,
      this.value});
  final ref;
  final String label;
  final String name;
  final borderColor;
  final focusBorder;
  final lines;
  final value;

  @override
  Widget build(BuildContext context) {
    // log(message)
    return Container(
      padding: EdgeInsets.only(
        bottom: kPadding.h,
      ),
      child: TextFormField(
        initialValue: value,
        maxLines: lines == null ? null : lines,
        style: TextStyle(
          color: borderColor == null ? blackColor : borderColor,
        ),
        decoration: InputDecoration(
          // label: CustomText(
          //   text: label,
          //   fontColor: borderColor == null ? blackColor : borderColor,
          // ),

          hintText: label,
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
          fillColor: whiteColor,
          // border: InputBorder.none,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: borderColor == null ? blackColor : borderColor,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: focusBorder == null ? blackColor : focusBorder,
            ),
          ),
          // fillColor: whiteColor,
        ),
        onChanged: (value) {
          ref.state[name] = value;
        },
      ),
    );
  }
}
