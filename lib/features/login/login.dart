import 'dart:developer';

import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/constant/modules/signup/signup.class.dart';
import 'package:donationapp/constant/common/textfield/CustomTextField.dart';
import 'package:donationapp/features/login/widgets/logo-area.dart';
import 'package:donationapp/helpers/custom.toast.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/store/login/login.store.dart';
import 'package:donationapp/store/signup/signup.store.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends ConsumerWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginDetails = ref.watch(loginDetailsProvider);
    final loginref = ref.watch(loginProvider);
    // log("$signUpDetails");
    final state = ref.watch(stateProvider);
    final getUserType = StorageService.getuserType();

    // StorageService.getuserType();

    handleSumbit() async {
      try {
        final resp = await loginref.signup(loginDetails);
        log("this is resp${resp['userRole']}");
        // log("user type ${getUserType}");
        if (resp['userRole'] == "user") {
          // ignore: use_build_context_synchronously
          // log("this is message");
          replaceRouteTo('/homepage', context);
          const snackBar = SnackBar(
            content: Text('Logged In'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          pop(context);
          // CustomScaffoldMessenger.info("Sucessfully logged In", context);
        } else if (resp['userRole'] == "admin") {
          replaceRouteTo("/admin-dashboard", context);
          const snackBar = SnackBar(
            content: Text('Logged in'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          // CustomScaffoldMessenger.info("Sucessfully logged In", context);
        }

        // ignore: use_build_context_synchronously

      } catch (e) {
        log('$e the success');
        CustomScaffoldMessenger.error(
            "Please enter correct email or password", context);
      }
    }

    return App(
      appbar: NavBar(
        title: "LOGIN",
        showBadge: false,
      ),
      component: Container(
        // height: 600.h,
        height: MediaQuery.of(context).size.height,
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
              LogoArea(),
              CustomTextField(
                ref: ref.read(loginDetailsProvider.notifier),
                label: "Email",
                name: "email",
              ),
              CustomTextField(
                ref: ref.read(loginDetailsProvider.notifier),
                label: "Password",
                name: "password",
                //obsecure: true,
              ),

              //
              state
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () {
                        // replaceRouteTo("/homepage", context);
                        // handleSumbit();
                        // log("${loginDetails}");
                        handleSumbit();
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(blueColor),
                      ),
                      child: Text("Login"),
                    ),
              TextButton(
                onPressed: () {
                  replaceRouteTo("/signup", context);
                },
                child: Text("Need an account? Signup"),
              )
            ],
          ),
        ),
      ),
      isAdmin: false,
      bottomNavBar: BottomNavBar(showBottomNavBar: false),
    );
  }
}
