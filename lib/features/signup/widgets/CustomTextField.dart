import 'package:expensetracker/constant/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, this.ref, required this.label, required this.name});
  final ref;
  final String label;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: kPadding.h,
      ),
      child: TextField(
        decoration: InputDecoration(
          label: Text(label),
        ),
        onChanged: (value) {
          ref.state[name] = value;
        },
      ),
    );
  }
}
