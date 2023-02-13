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

    log("this is acount detials${userDetails}");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "First Name",
          fontColor: whiteColor,
          fontSize: 20.sp,
        ),
        CustomTextField(
          refs: ref.read(userDetailsProvider.notifier),
          label: "First Name",
          name: "firstName",
          borderColor: whiteColor,
          value: userDetails['firstName'],
          // ref: ref,
        ),
        CustomText(
          text: "Last Name",
          fontColor: whiteColor,
          fontSize: 20.sp,
        ),
        CustomTextField(
          refs: ref.read(userDetailsProvider.notifier),
          label: "Last Name",
          name: "lastName",
          borderColor: whiteColor,
          value: userDetails['lastName'],
          // ref: ref,
        ),
        CustomText(
          text: "Phone",
          fontColor: whiteColor,
          fontSize: 20.sp,
        ),
        CustomTextField(
          // ref: ref,
          refs: ref.read(userDetailsProvider.notifier),
          label: "Phone",
          name: "phoneNo",
          borderColor: whiteColor,
          value: userDetails['phoneNo'],
        ),
        CustomText(
          text: "Email",
          fontColor: whiteColor,
          fontSize: 20.sp,
        ),
        CustomTextField(
          refs: ref.read(userDetailsProvider.notifier),
          // ref: ref,
          label: "Email",
          name: "email",
          borderColor: whiteColor,
          value: userDetails['email'],
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
