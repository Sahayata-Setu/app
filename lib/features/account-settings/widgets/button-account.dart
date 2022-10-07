import 'dart:developer';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/helpers/custom.toast.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/store/account-setting/account.setting.store.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonAreaAccount extends ConsumerWidget {
  const ButtonAreaAccount({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final updateDetailsProv = ref.watch(updateDetailsProfileProvider);
    final updateDetails = ref.watch(userDetailsProvider);
    // log("this is from button ${updateDetails}");
    final userId = StorageService.getId();
    handleSumbit() async {
      try {
        updateDetailsProv.updateProfile(userId, updateDetails);
        const snackBar = SnackBar(
          content: Text('User Updated'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        pop(context);
        // if (getUserType == "user") {
        // ignore: use_build_context_synchronously
        // log("this is message");
        // replaceRouteTo('/homepage', context);
        // CustomScaffoldMessenger.info("Sucessfully logged In", context);
        // } else if (getUserType == "admin") {
        // replaceRouteTo("/admin-dashboard", context);
        // CustomScaffoldMessenger.info("Sucessfully logged In", context);
        // }

        // ignore: use_build_context_synchronously

      } catch (e) {
        log('$e the success');
        CustomScaffoldMessenger.error(
            "Please enter correct email or password", context);
      }
    }

    return Center(
      child: GestureDetector(
        onTap: () {
          handleSumbit();
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
