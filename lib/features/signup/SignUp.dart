import 'dart:developer';
import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/GoogleButtomNavBar/GoogleButtomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/textfield/CustomTextArea.dart';
import 'package:donationapp/constant/common/textfield/customDropDown.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/constant/modules/signup/signup.class.dart';
import 'package:donationapp/constant/common/textfield/CustomTextField.dart';
import 'package:donationapp/helpers/custom.toast.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/store/signup/signup.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Signup extends ConsumerWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpDetails = ref.watch(signUpDetailsProvider);
    final signUpRef = ref.watch(signUpProvider);
    log("this is sgnup details: ${signUpDetails}");

    const languages = ["english", "hindi", "gujarati"];
    const gender = ["male", "female", "other"];
    final phoneNo = ref.watch(signUpDetailsProvider);

    log("Phone No: ${phoneNo['phoneNo']}");
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
        // height: 600.h,
        color: SignupKConstant.backgroundColor,
        child: Container(
          padding: EdgeInsets.only(
            left: kPadding.w,
            right: kPadding.w,
            top: 10.h,
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
                const SizedBox(
                  height: kMargin / 2,
                ),

                CustomTextArea(
                  text: "First Name",
                  refs: ref.read(signUpDetailsProvider.notifier),
                  name: "firstName",
                ),

                CustomTextArea(
                  text: "Last Name",
                  refs: ref.read(signUpDetailsProvider.notifier),
                  name: "lastName",
                ),

                CustomTextArea(
                  text: "Email",
                  refs: ref.read(signUpDetailsProvider.notifier),
                  name: "email",
                ),

                CustomTextArea(
                  text: "Phone Number",
                  refs: ref.read(signUpDetailsProvider.notifier),
                  name: "phoneNo",
                  isPhoneNo: true,
                  value: ref.watch(signUpDetailsProvider)['phoneNo'],
                ),
                // CustomTextField(
                //   refs: ref.read(signUpDetailsProvider.notifier),
                //   label: "First Name",
                //   name: "firstName",
                // ),
                // CustomTextField(
                //   refs: ref.read(signUpDetailsProvider.notifier),
                //   label: "Last Name",
                //   name: "lastName",
                // ),
                // CustomTextField(
                //   refs: ref.read(signUpDetailsProvider.notifier),
                //   label: "Email",
                //   name: "email",
                // ),
                // CustomTextField(
                //   refs: ref.read(signUpDetailsProvider.notifier),
                //   label: "Phone Number",
                //   name: "phoneNo",
                // ),
                // CustomTextField(
                //   refs: ref.read(signUpDetailsProvider.notifier),
                //   label: "Address",
                //   name: "address",
                // ),
                // CustomTextField(
                //   refs: ref.read(signUpDetailsProvider.notifier),
                //   label: "City",
                //   name: "city",
                // ),
                // CustomTextField(
                //   refs: ref.read(signUpDetailsProvider.notifier),
                //   label: "Password",
                //   name: "password",
                // ),
                CustomTextArea(
                  text: "City",
                  refs: ref.read(signUpDetailsProvider.notifier),
                  name: "city",
                ),
                CustomTextArea(
                  text: "Address",
                  refs: ref.read(signUpDetailsProvider.notifier),
                  name: "address",
                ),
                MainCustomDropDown(
                  list: gender,
                  name: "gender",
                  title: "Gender",
                  refs: ref.read(signUpDetailsProvider.notifier),
                ),

                MainCustomDropDown(
                  list: languages,
                  name: "language",
                  title: "Preferred Language",
                  refs: ref.read(signUpDetailsProvider.notifier),
                ),

                // DropdownButtonFormField(
                //   items: gender.map((String category) {
                //     return new DropdownMenuItem(
                //         value: category, child: Text(category));
                //   }).toList(),
                //   decoration: const InputDecoration(
                //     label: Text("Gender"),
                //   ),
                //   onChanged: (val) {
                //     ref.read(signUpDetailsProvider.notifier).state['gender'] =
                //         val.toString();
                //     // log("This is dropdown val ${val}");
                //   },
                // ),

                // SizedBox(
                //   height: 10.h,
                // ),
                // DropdownButtonFormField(
                //   items: languages.map((String category) {
                //     return new DropdownMenuItem(
                //         value: category, child: Text(category));
                //   }).toList(),
                //   decoration: const InputDecoration(
                //     label: Text("Language"),
                //   ),
                //   onChanged: (val) {
                //     ref.read(signUpDetailsProvider.notifier).state['language'] =
                //         val.toString();

                //     // log("This is dropdown val ${val}");
                //   },
                // ),

                CustomTextArea(
                  text: "Password",
                  refs: ref.read(signUpDetailsProvider.notifier),
                  name: "password",
                  isObscure: true,
                ),
                SizedBox(
                  height: kMargin.h,
                ),

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

                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: "Already have an account ?",
                      fontSize: 14.sp,
                    ),
                    TextButton(
                      onPressed: () {
                        replaceRouteTo("/login", context);
                      },
                      child: CustomText(
                        text: "Login",
                        fontSize: 14.sp,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      isAdmin: false,
      bottomNavBar: const GoogleButtomNavBar(showBottomNavBar: false),
    );
  }
}
