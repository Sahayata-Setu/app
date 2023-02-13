import 'dart:developer';

import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.label,
    required this.name,
    this.borderColor,
    this.lines,
    this.focusBorder,
    this.value,
    this.readOnly,
    this.refs,
  });
  final refs;
  // final refT;
  final String label;
  final String name;
  final borderColor;
  final focusBorder;
  final lines;
  final value;
  final readOnly;

  @override
  Widget build(BuildContext context) {
    // final obText = refT.watch(obscureTextProvider);
    // log("this is from ob text ${obText}");
    // log(message)
    return Container(
      padding: EdgeInsets.only(
        bottom: kPadding.h,
      ),
      child: TextFormField(
        readOnly: readOnly == null ? false : readOnly,
        // obscureText: obsecure ? true : false,
        initialValue: value,
        maxLines: lines == null ? null : lines,
        style: TextStyle(
          color: borderColor == null ? blackColor : borderColor,
        ),
        // obscureText: obText,
        decoration: InputDecoration(
          label: Text(label),
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
          refs.state[name] = value.trim();
        },
      ),
    );
  }
}
