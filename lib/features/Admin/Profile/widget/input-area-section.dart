import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/textfield/CustomTextField.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputAreaSection extends StatelessWidget {
  const InputAreaSection({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          text: label,
          fontColor: blackColor,
          fontSize: 16.sp,
        ),
      ],
    );
  }
}
