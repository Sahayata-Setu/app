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

class TextFieldAreaChangeLocation extends ConsumerWidget {
  const TextFieldAreaChangeLocation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final passwordDetails = ref.watch(locationDetailsProvider);
    log("this is from change location ${passwordDetails}");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "Location",
          fontColor: whiteColor,
          fontSize: 20.sp,
        ),
        CustomTextField(
          // ref: ref,
          refs: ref.read(locationDetailsProvider.notifier),
          label: "Location",
          name: "location",
          borderColor: whiteColor,
        ),
      ],
    );
  }
}
