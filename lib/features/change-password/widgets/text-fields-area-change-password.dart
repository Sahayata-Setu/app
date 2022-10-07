import 'dart:developer';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/textfield/CustomTextField.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/apply-for-volunteer/widget/add-images.dart';
import 'package:donationapp/store/account-setting/account.setting.store.dart';
import 'package:donationapp/store/apply-for-volunteer/apply-for-volunteer.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldAreaChangePassword extends ConsumerWidget {
  const TextFieldAreaChangePassword({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final passwordDetails = ref.watch(passwordDetailsProvider);
    log("this is from password details${passwordDetails}");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "Password",
          fontColor: whiteColor,
          fontSize: 20.sp,
        ),
        CustomTextField(
          // ref: ref,
          refs: ref.read(passwordDetailsProvider.notifier),
          label: "Password",
          name: "password",
          borderColor: whiteColor,
        ),
        CustomText(
          text: "Confirm Password",
          fontColor: whiteColor,
          fontSize: 20.sp,
        ),
        CustomTextField(
          // ref: ref.read(volunteerDetailsProvider.notifier),
          // ref: ref,
          label: "Confirm Password",
          name: "confirmPassword",
          borderColor: whiteColor,
        ),
      ],
    );
  }
}
