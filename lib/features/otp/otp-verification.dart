import 'dart:developer';

import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/otp/store/mobile-number.store.dart';
import 'package:donationapp/features/otp/store/otp-verification.store.dart';
import 'package:donationapp/features/otp/widgets/otp-textfield.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpVerification extends ConsumerWidget {
  const OtpVerification({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    FirebaseAuth auth = FirebaseAuth.instance;
    bool _isLoading = false;
    final firstDigit = ref.watch(first);
    final secondDigit = ref.watch(second);
    final thirdDigit = ref.watch(third);
    final fourthDigit = ref.watch(fourth);
    final fifthDigit = ref.watch(fifth);
    final sixthDigit = ref.watch(sixth);
    final verification = ref.watch(verificationIdProvider);

    final otp = firstDigit +
        secondDigit +
        thirdDigit +
        fourthDigit +
        fifthDigit +
        sixthDigit;

    // Verify Code
    void verifyCode() async {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: verification, smsCode: otp);
      await auth.signInWithCredential(credential).then((value) {
        routeTo("/homepage", context);
        print("Logged IN");
      });
    }

    log("Fist: $otp ");
    return App(
      component: Container(
        padding: EdgeInsets.only(
            left: kPadding.w, right: kPadding.w, top: kPadding.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Enter OTP",
              fontSize: 22.sp,
              fontWeight: FontWeight.bold,
            ),
            Container(
              padding: EdgeInsets.only(top: kPadding.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OtpTextField(
                    refs: ref.read(first.notifier),
                  ),
                  OtpTextField(
                    refs: ref.read(second.notifier),
                  ),
                  OtpTextField(
                    refs: ref.read(third.notifier),
                  ),
                  OtpTextField(
                    refs: ref.read(fourth.notifier),
                  ),
                  OtpTextField(
                    refs: ref.read(fifth.notifier),
                  ),
                  OtpTextField(
                    refs: ref.read(sixth.notifier),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            ElevatedButton(
              onPressed: () {
                verifyCode();
              },
              child: Text("Sumbit"),
            )
          ],
        ),
      ),
      appbar: const NavBar(
        showBadge: false,
        // route: "/homepage",
        title: "Otp Verification",
        isMainPage: false,
      ),
      isAdmin: false,
      bottomNavBar: BottomNavBar(showBottomNavBar: false),
    );
  }
}
