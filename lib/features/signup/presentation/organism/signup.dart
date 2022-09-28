import 'package:expensetracker/app.dart';
import 'package:expensetracker/constant/common/signup/kconstant.dart';
import 'package:expensetracker/constant/kconstant.dart';
import 'package:expensetracker/features/signup/presentation/molecule/text-fields-section.dart';
import 'package:expensetracker/features/signup/presentation/molecule/title_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return App(
        component: Column(
      children: [
        Text(
          "This is homepage",
          style: TextStyle(
            color: Colors.amber,
          ),
        )
      ],
    ));
  }
}
