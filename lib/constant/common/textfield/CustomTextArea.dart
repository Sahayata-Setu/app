import 'package:dartz/dartz.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextArea extends ConsumerStatefulWidget {
  const CustomTextArea({
    super.key,
    required this.text,
    this.value,
    this.hint,
    this.fontSize,
    this.contentPadding,
    this.isPhoneNo,
    this.refs,
    this.isObscure,
  });
  final value;
  final hint;
  final String text;
  final fontSize;
  final isPhoneNo;
  final contentPadding;
  final refs;
  final isObscure;

  @override
  ConsumerState<CustomTextArea> createState() => _CustomTextAreaState();
}

class _CustomTextAreaState extends ConsumerState<CustomTextArea> {
  @override
  // void initState() {

  //   // TODO: implement initState
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10.w, top: 10.h),
          child: CustomText(
            text: widget.text,
            fontColor: blackColor,
            fontSize: widget.fontSize ?? 16.sp,
          ),
        ),
        Container(
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: widget.contentPadding == null
                  ? EdgeInsets.all(10.h)
                  : EdgeInsets.all(widget.contentPadding),
              prefixText: widget.isPhoneNo == true ? "+91" : null,
              // prefixStyle: ,
              // prefix: Text("+91"),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.r),
              ),
              hintText: widget.value == null ? widget.hint : null,
            ),
            style: TextStyle(
              fontSize: 16.sp,
            ),
            initialValue: widget.value ?? null,
            obscureText: widget.isObscure ?? false,

            // onChanged: (value) {
            //   refs.state[text] = value.trim();
            // },
          ),
        ),
      ],
    );
  }
}
