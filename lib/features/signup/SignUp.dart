import 'dart:developer';

import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/constant/modules/signup/signup.class.dart';
import 'package:donationapp/constant/common/textfield/CustomTextField.dart';
import 'package:donationapp/helpers/custom.toast.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/store/signup/signup.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/common/BottomNavBar/BottomNavBar.dart';

class Signup extends ConsumerWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpDetails = ref.watch(signUpDetailsProvider);
    final signUpRef = ref.watch(signUpProvider);
    // log("$signUpRef");

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
      appbar: NavBar(
        title: "SIGN UP",
        showBadge: false,
      ),
      component: Container(
        height: 600.h,
        color: SignupKConstant.backgroundColor,
        child: Container(
          padding: EdgeInsets.only(
            left: kPadding.w,
            right: kPadding.w,
            top: kPadding.h + 30,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
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
                  refs: ref.read(signUpDetailsProvider.notifier),
                  label: "First Name",
                  name: "firstName",
                ),
                CustomTextField(
                  refs: ref.read(signUpDetailsProvider.notifier),
                  label: "Last Name",
                  name: "lastName",
                ),
                CustomTextField(
                  refs: ref.read(signUpDetailsProvider.notifier),
                  label: "Email",
                  name: "email",
                ),
                CustomTextField(
                  refs: ref.read(signUpDetailsProvider.notifier),
                  label: "Phone Number",
                  name: "phoneNo",
                ),
                CustomTextField(
                  refs: ref.read(signUpDetailsProvider.notifier),
                  label: "Address",
                  name: "address",
                ),

                CustomTextField(
                  refs: ref.read(signUpDetailsProvider.notifier),
                  label: "Gender",
                  name: "gender",
                ),
                CustomTextField(
                  refs: ref.read(signUpDetailsProvider.notifier),
                  label: "Language",
                  name: "language",
                ),
                CustomTextField(
                  refs: ref.read(signUpDetailsProvider.notifier),
                  label: "Password",
                  name: "password",
                ),

                //
                ElevatedButton(
                  onPressed: () async {
                    // replaceRouteTo("/homepage", context);
                    handleSumbit();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(blueColor),
                  ),
                  child: Text("Sign Up"),
                ),

                TextButton(
                  onPressed: () {
                    replaceRouteTo("/login", context);
                  },
                  child: Text("Already have an account? Login"),
                )
              ],
            ),
          ),
        ),
      ),
      isAdmin: false,
      bottomNavBar: BottomNavBar(showBottomNavBar: false),
    );
  }
}
