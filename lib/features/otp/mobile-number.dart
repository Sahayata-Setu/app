import 'dart:developer';

import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/otp/store/mobile-number.store.dart';
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
  @override
  Widget build(BuildContext context) {
    final _mobilePhoneController = TextEditingController();
    final _countryCodeController = TextEditingController();

    //Data Fetching from store
    final verification = "";
    // ref.watch(verificationIdProvider);

    bool _isLoading = false;
    // String verification = "";
    FirebaseAuth auth = FirebaseAuth.instance;

    void verifyNumber() {
      auth.verifyPhoneNumber(
        phoneNumber: "+91${_mobilePhoneController.text}",
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential).then((val) {
            print("Logged in successful");
          });
          // log("Credintail: $credential");
        },
        verificationFailed: (FirebaseAuthException e) {
          log("Error: $e");
        },
        codeSent: (String verificationId, int? resendToken) {
          // setState(() {
          //   verification = verificationId;
          // });
          ref.read(verificationIdProvider.notifier).state = verificationId;
          routeTo("/otp-verification", context);
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    }

    // void verifyOtp()

    // log("Verification ID: $verification");
    return App(
      component: Container(
        padding: EdgeInsets.only(left: kPadding.w, right: kPadding.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 40.h,
                  width: 50.w,
                  child: TextFormField(
                    initialValue: "+91",
                    readOnly: true,
                    // controller: _countryCodeController,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
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
                ),
                SizedBox(
                  width: 30.h,
                ),
                SizedBox(
                  height: 40.h,
                  width: 220.w,
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
            ElevatedButton(
              onPressed: () {
                verifyNumber();
                // if (verification.length > 0) {
                // routeTo("/otp-verification", context);
                // }
              },
              child: Text("Sumbit"),
            )
          ],
        ),
      ),
      appbar: const NavBar(
        showBadge: false,
        // route: "/homepage",
        title: "Mobile Number",
        isMainPage: false,
      ),
      isAdmin: false,
      bottomNavBar: BottomNavBar(showBottomNavBar: false),
    );
  }
}
