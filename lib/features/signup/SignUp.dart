import 'dart:developer';

import 'package:expensetracker/app.dart';
import 'package:expensetracker/constant/common/Text/custom-text.dart';
import 'package:expensetracker/constant/kconstant.dart';
import 'package:expensetracker/constant/modules/signup/signup.class.dart';
import 'package:expensetracker/features/signup/widgets/CustomTextField.dart';
import 'package:expensetracker/helpers/custom.toast.dart';
import 'package:expensetracker/helpers/route.utils.dart';
import 'package:expensetracker/store/signup/signup.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Signup extends ConsumerWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpDetails = ref.watch(signUpDetailsProvider);
    final signUpRef = ref.watch(signUpProvider);
    log("$signUpDetails");

    handleSumbit() async {
      try {
        await signUpRef.signup(signUpDetails);
        // ignore: use_build_context_synchronously
        CustomScaffoldMessenger.info("Sucessfully Signed In", context);
        // ignore: use_build_context_synchronously
        replaceRouteTo('/homepage', context);
      } catch (e) {
        log('$e the success');
        CustomScaffoldMessenger.error(
            "Email or username is already taken", context);
      }
    }

    return App(
      component: Container(
        height: 600.h,
        color: SignupKConstant.backgroundColor,
        child: Container(
          padding: EdgeInsets.only(
            left: kPadding.w,
            right: kPadding.w,
            top: kPadding.h + 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "Welcome",
                fontWeight: FontWeight.bold,
                fontSize: 24.sp,
                fontColor: blackColor,
              ),
              CustomTextField(
                ref: ref.read(signUpDetailsProvider.notifier),
                label: "Name",
                name: "name",
              ),
              CustomTextField(
                ref: ref.read(signUpDetailsProvider.notifier),
                label: "Email",
                name: "email",
              ),
              CustomTextField(
                ref: ref.read(signUpDetailsProvider.notifier),
                label: "Username",
                name: "userName",
              ),
              CustomTextField(
                ref: ref.read(signUpDetailsProvider.notifier),
                label: "Password",
                name: "password",
              ),

              //
              ElevatedButton(
                  onPressed: () async {
                    // replaceRouteTo("/homepage", context);
                    handleSumbit();
                  },
                  child: Text("SignUp"))
            ],
          ),
        ),
      ),
    );
  }
}
