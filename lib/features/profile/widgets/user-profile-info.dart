import 'dart:developer';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/store/account-setting/account.setting.store.dart';
import 'package:donationapp/store/single-user/single-user.store.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserProfileInformation extends ConsumerWidget {
  const UserProfileInformation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // log("this is user data from fkjdgfd ${data}");
    final userId = StorageService.getId();
    final userType = StorageService.getuserType();
    final data = ref.watch(userDetailsProvider);
    final userDetails = ref.watch(singleUserDataProvider(userId));

    // log("this is from profilesec${userDetails}");
    return userDetails.when(
        data: (data) {
          final userDet = data['body'];
          return Column(
            children: [
              userType == "ngo"
                  ? CustomText(
                      text: "${userDet['firstName']} ",
                      fontSize: 20.sp,
                      fontColor: blackColor,
                    )
                  : CustomText(
                      text: "${userDet['firstName']} ${userDet['lastName']} ",
                      fontSize: 20.sp,
                      fontColor: blackColor,
                    ),
              SizedBox(
                height: 8.h,
              ),
              CustomText(
                text: "${userDet['email']}",
                fontSize: 16.sp,
                fontColor: blackColor,
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomText(
                text: "${userDet['phoneNo']}",
                fontSize: 16.sp,
                fontColor: blackColor,
              ),
            ],
          );
        },
        error: (e, st) => CustomText(text: "Something Went Wrong"),
        loading: () => Container());
  }
}
