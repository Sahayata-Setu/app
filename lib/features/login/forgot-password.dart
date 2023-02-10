import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/textfield/CustomTextArea.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: "Forgot Password"),
        backgroundColor: blueColor,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
              left: kPadding.w,
              right: kPadding.w,
              top: kPadding.h,
              bottom: kPadding.w),
          child: Column(
            children: [
              CustomTextArea(
                hint: "Enter Email",
                text: "Enter Email",
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 30.h,
                width: 150.w,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(blueColor)),
                    onPressed: () {},
                    child: CustomText(text: "Continue")),
              )
              // Text('forgot password'),
            ],
          ),
        ),
      ),
    );
  }
}
