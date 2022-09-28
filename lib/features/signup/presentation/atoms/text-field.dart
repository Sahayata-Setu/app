import 'package:expensetracker/constant/common/signup/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, this.radius, this.labelText})
      : super(key: key);
  final radius;
  // final borderColor;
  final labelText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          hintText: labelText,
        ),
      ),
    );
  }
}
