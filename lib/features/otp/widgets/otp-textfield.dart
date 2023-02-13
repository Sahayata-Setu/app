import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpTextField extends ConsumerStatefulWidget {
  const OtpTextField({
    super.key,
    this.refs,
  });
  final refs;

  @override
  ConsumerState<OtpTextField> createState() => _OtpTextFieldState();
}

class _OtpTextFieldState extends ConsumerState<OtpTextField> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    controller.addListener(() {
      // log("Controller: ${controller.text}");
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  // final controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 40.w,
      child: TextFormField(
        keyboardType: TextInputType.number,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 12.w, right: 10.w),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          hintText: "0",
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 20.sp,
          ),
          fillColor: Colors.white,
          filled: true,
        ),
        style: TextStyle(
          color: Colors.black,
          fontSize: 20.sp,
        ),
        onChanged: (val) {
          // log("Value: $val");
          if (val.length == 1) {
            FocusScope.of(context).nextFocus();
          }
          widget.refs.state = val;
        },
      ),
    );
  }
}
