import 'dart:developer';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/textfield/CustomTextArea.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/login/store/forgot-password.store.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ForgotPassword extends ConsumerWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    log("Email Details: ${ref.watch(emailProvider)}");

    //Reference for accessing forgot password store
    final forgotPassStoreRef = ref.watch(forgotPassProvider);
    //Object of email details from store
    final emailDetails = ref.watch(emailProvider);
    //show loading
    final isLoading = ref.watch(loadingForgotPass);

    handleSumbit() async {
      if (emailDetails['email']!.isEmpty) {
        const snackBar = SnackBar(
          content: Text('Email must not be empty'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
      await forgotPassStoreRef.forgotPassword(emailDetails).then((val) {
        log("Vall");
        final snackBar = SnackBar(
          content: Text('${val['message']}'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        routeTo("/login", context);
      }).catchError((err) {
        final snackBar = SnackBar(
          content: Text('User Does not exists'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      });
    }

    // /auth/forgot-password
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
                hint: "Email",
                text: "Enter Email",
                refs: ref.read(emailProvider.notifier),
                name: "email",
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
                    onPressed: () {
                      handleSumbit();
                    },
                    child: isLoading
                        ? LoadingAnimationWidget.threeRotatingDots(
                            color: blueBackgroundColor, size: 20.h)
                        : CustomText(text: "Continue")),
              )
              // Text('forgot password'),
            ],
          ),
        ),
      ),
    );
  }
}
