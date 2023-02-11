import 'dart:developer';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/textfield/CustomTextArea.dart';
import 'package:donationapp/constant/common/textfield/customDropDown.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/Admin/add-ngo/store/add-ngo.store.dart';
import 'package:donationapp/helpers/custom.toast.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/store/login/login.store.dart';
import 'package:donationapp/store/signup/signup.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddNgo extends ConsumerWidget {
  const AddNgo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signupNgoDetails = ref.watch(signupNgoDetailsProvider);
    final signupNgoRef = ref.watch(signupNgoProvider);
    log("SIgnup Details: ${signupNgoDetails}");
    const languages = ["english", "hindi", "gujarati"];

    handleSumbit() async {
      try {
        await signupNgoRef.signup(signupNgoDetails);
        // ignore: use_build_context_synchronously
        CustomScaffoldMessenger.info("NGO created successfully", context);
        // ignore: use_build_context_synchronously
        replaceRouteTo("/new-admin-dashboard", context);
      } catch (e) {
        log('$e the success');
        CustomScaffoldMessenger.error(
            "Email or username is already taken", context);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: "Add NGO"),
        backgroundColor: blueColor,
      ),
      body: Container(
        padding: EdgeInsets.only(left: kPadding.w, right: kPadding.w),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: kMargin / 2,
              ),
              // CustomTextArea(
              //   text: "First Name",
              //   refs: ref.read(signUpDetailsProvider.notifier),
              //   name: "firstName",
              // ),

              CustomTextArea(
                text: "Name",
                refs: ref.read(signupNgoDetailsProvider.notifier),
                name: "name",
              ),
              CustomTextArea(
                text: "Email",
                refs: ref.read(signupNgoDetailsProvider.notifier),
                name: "email",
              ),
              CustomTextArea(
                text: "Phone Number",
                refs: ref.read(signupNgoDetailsProvider.notifier),
                name: "phoneNo",
              ),
              CustomTextArea(
                text: "City",
                refs: ref.read(signupNgoDetailsProvider.notifier),
                name: "city",
              ),
              CustomTextArea(
                text: "Address",
                refs: ref.read(signupNgoDetailsProvider.notifier),
                name: "address",
              ),

              MainCustomDropDown(
                list: languages,
                name: "language",
                title: "Preferred Language",
                refs: ref.read(signupNgoDetailsProvider.notifier),
              ),
              CustomTextArea(
                text: "Password",
                refs: ref.read(signupNgoDetailsProvider.notifier),
                name: "password",
                isObscure: true,
              ),
              SizedBox(
                height: kMargin.h,
              ),
              ElevatedButton(
                onPressed: () async {
                  handleSumbit();
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(blueColor),
                ),
                child: Text("Add"),
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
