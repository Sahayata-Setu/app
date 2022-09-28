import 'package:expensetracker/constant/common/signup/kconstant.dart';
import 'package:expensetracker/features/signup/presentation/atoms/text-field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldArea extends StatelessWidget {
  const TextFieldArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 72.h,
        ),
        CustomTextField(
          radius: SignUpConstant.textFormFieldRadius,
          labelText: "Name",
        ),
        SizedBox(
          height: 10.h,
        ),
        CustomTextField(
          radius: SignUpConstant.textFormFieldRadius,
          labelText: "Email",
        ),
        SizedBox(
          height: 10.h,
        ),
        CustomTextField(
          radius: SignUpConstant.textFormFieldRadius,
          labelText: "Password",
        ),
      ],
    );
  }
}
