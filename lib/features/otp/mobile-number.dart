import 'dart:developer';

import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/button/cusotm-button.dart';
import 'package:donationapp/constant/common/button/custom-gradient-button.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/otp/store/mobile-number.store.dart';
import 'package:donationapp/features/otp/store/otp-verification.store.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileNumber extends ConsumerStatefulWidget {
  const MobileNumber({super.key});

  @override
  ConsumerState<MobileNumber> createState() => _MobileNumberState();
}

class _MobileNumberState extends ConsumerState<MobileNumber> {
  final _mobilePhoneController = TextEditingController();
  // final _countryCodeController = TextEditingController();
  // var error;
  // ref.watch(verificationIdProvider);

  bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    final error = ref.watch(errorProvider);

    //Data Fetching from store
    // final verification = "";

    // String verification = "";
    log("Error: $error ");
    FirebaseAuth auth = FirebaseAuth.instance;

    void verifyNumber() {
      auth.verifyPhoneNumber(
        phoneNumber: "+91${_mobilePhoneController.text}",
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential).then((val) {
            print("Logged in successful");
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          log("Error: $e");
          ref.read(errorProvider.notifier).state = "Too many requests";
        },
        codeSent: (String verificationId, int? resendToken) {
          ref.read(verificationIdProvider.notifier).state = verificationId;
          routeTo("/otp-verification", context);
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    }

    return App(
      component: Container(
        padding: EdgeInsets.only(
          left: kPadding.w,
          right: kPadding.w,
          top: kPadding.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Enter Mobile Number\nto Signup",
              fontSize: 20.sp,
              fontStyle: FontStyle.italic,
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/images/india.png",
                    height: 30.h, width: 30.w),
                SizedBox(
                  height: 40.h,
                  width: 40.w,
                  child: TextFormField(
                    initialValue: "+91",
                    readOnly: true,
                    // controller: _countryCodeController,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      border: InputBorder.none,

                      // prefixIcon: Image.asset("assets/images/india.png",
                      //     height: 5.h, width: 5.w),
                      // enabledBorder: OutlineInputBorder(
                      //   borderSide: BorderSide(
                      //     color: Colors.black,
                      //   ),
                      // ),
                      // focusedBorder: OutlineInputBorder(
                      //   borderSide: BorderSide(
                      //     color: Colors.black,
                      //   ),
                      // ),
                    ),
                  ),
                ),
                // SizedBox(
                //   width: 30.h,
                // ),
                SizedBox(
                  height: 40.h,
                  width: 180.w,
                  child: TextFormField(
                    controller: _mobilePhoneController,
                    decoration: InputDecoration(
                      hintText: "Mobile Number",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            CustomText(
              text: "${error ?? ""}",
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              fontColor: Colors.red,
            ),
            CustomGradientButtom(
              fn: () {
                verifyNumber();
                // if (verification.length > 0) {
                // routeTo("/otp-verification", context);
                // }
                ref.refresh(errorProvider);
                ref.refresh(otpErrorProvider);
              },
              buttonText: "Send Otp",
            )
            // ElevatedButton(
            //   onPressed: () {
            //     verifyNumber();
            //     // if (verification.length > 0) {
            //     // routeTo("/otp-verification", context);
            //     // }
            //     ref.refresh(errorProvider);
            //     ref.refresh(otpErrorProvider);
            //   },
            //   child: Text("Sumbit"),
            // )
          ],
        ),
      ),
      appbar: const NavBar(
        showBadge: false,
        // route: "/homepage",
        title: "Enter Mobile Number",
        isMainPage: false,
      ),
      isAdmin: false,
      bottomNavBar: BottomNavBar(showBottomNavBar: false),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class MobileNumber extends StatelessWidget {
//   const MobileNumber({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("App title"),
//         ),
//         body: Column(
//           children: [
//             Text("This is title here"),
//             Container(
//               height: 50.h,
//               width: 100.w,
//               decoration: BoxDecoration(
//                 color: Colors.red,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Text("Rajkot Buspath"),
//             )
//           ],
//         ));
//   }
// }
