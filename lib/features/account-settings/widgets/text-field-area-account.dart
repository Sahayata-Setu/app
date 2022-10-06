import 'dart:developer';

import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/store/account-setting/account.setting.store.dart';
import 'package:donationapp/store/single-user/single-user.store.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/textfield/CustomTextField.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldAreaAccount extends ConsumerWidget {
  const TextFieldAreaAccount({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = StorageService.getId();
    final userDetails = ref.watch(userDetailsProvider);

    final singleUserDetails = ref.watch(singleUserDataProvider(id));
    log("this is acount detials${singleUserDetails}");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "First Name",
          fontColor: whiteColor,
          fontSize: 20.sp,
        ),
        CustomTextField(
          ref: ref.read(userDetailsProvider.notifier),
          label: "First Name",
          name: "firstName",
          borderColor: whiteColor,
          // ref: ref,
        ),
        CustomText(
          text: "Last Name",
          fontColor: whiteColor,
          fontSize: 20.sp,
        ),
        CustomTextField(
          ref: ref.read(userDetailsProvider.notifier),
          label: "Last Name",
          name: "firstName",
          borderColor: whiteColor,
          // ref: ref,
        ),
        CustomText(
          text: "Phone",
          fontColor: whiteColor,
          fontSize: 20.sp,
        ),
        CustomTextField(
          // ref: ref,
          ref: ref.read(userDetailsProvider.notifier),
          label: "Phone",
          name: "phone",
          borderColor: whiteColor,
        ),
        CustomText(
          text: "Email",
          fontColor: whiteColor,
          fontSize: 20.sp,
        ),
        CustomTextField(
          ref: ref.read(userDetailsProvider.notifier),
          // ref: ref,
          label: "Email",
          name: "email",
          borderColor: whiteColor,
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
