import 'dart:developer';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/store/login/login.store.dart';
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
    // this.showObText,
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
        // obscureText: obsecure ? true : false,
        initialValue: value,
        maxLines: lines == null ? null : lines,
        style: TextStyle(
          color: borderColor == null ? blackColor : borderColor,
        ),
        // obscureText: obText,
        decoration: InputDecoration(
          // suffixIcon: GestureDetector(
          //   child: Icon(Icons.remove_red_eye_outlined),
          //   onTap: () {
          //     refT.read(obscureTextProvider.notifier).state = true;
          //   },
          // ),

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
          refs.state[name] = value;
        },
      ),
    );
  }
}
