import 'dart:developer';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/store/account-setting/account.setting.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserProfileInformation extends ConsumerWidget {
  const UserProfileInformation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // log("this is user data from fkjdgfd ${data}");
    final data = ref.watch(userDetailsProvider);
    // log("this is from profilesec${data}");
    return Column(
      children: [
        CustomText(
          text: "${data['firstName']} ${data['lastName'] ?? "Doe"} ",
          fontSize: 20.sp,
          fontColor: blackColor,
        ),
        SizedBox(
          height: 8.h,
        ),
        CustomText(
          text: "${data['email'] ?? "john@gm.com"}",
          fontSize: 16.sp,
          fontColor: blackColor,
        ),
        SizedBox(
          height: 8.h,
        ),
        CustomText(
          text: "${data['phoneNo'] ?? "000000000"}",
          fontSize: 16.sp,
          fontColor: blackColor,
        ),
      ],
    );
  }
}
