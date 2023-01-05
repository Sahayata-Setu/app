import 'dart:developer';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/store/account-setting/account.setting.store.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonAreaChangePassword extends ConsumerWidget {
  const ButtonAreaChangePassword({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final passwordDetails = ref.watch(passwordDetailsProvider);
    final accountSettingProv = ref.watch(updateDetailsProfileProvider);
    final userId = StorageService.getId();
    // log("This is userId: ${userId}");
    updatePassword() async {
      try {
        final res =
            await accountSettingProv.updatePassword(userId, passwordDetails);
        // log("This is success response: ${res}");
        final success = SnackBar(content: Text(res['message']));

        ScaffoldMessenger.of(context).showSnackBar(success);
      } catch (e) {
        final error =
            SnackBar(content: Text("Current password does not match."));

        ScaffoldMessenger.of(context).showSnackBar(error);

        log("Error ${e}");
        // throw
      }
    }

    return Center(
      child: GestureDetector(
        onTap: () {
          updatePassword();
        },
        child: Container(
          height: 30.h,
          width: 100.w,
          decoration: BoxDecoration(
            color: lightBlueColor,
            borderRadius: BorderRadius.circular(18.r),
          ),
          child: Center(
            child: CustomText(
              text: "Sumbit",
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
