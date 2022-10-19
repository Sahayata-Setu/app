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
    final state = ref.watch(loading);
    // log("this is from button ${state}");
    final userId = StorageService.getId();
    handleSumbit() async {
      try {
        final resp =
            await updateDetailsProv.updateProfile(userId, updateDetails);
        log("this is from account ${resp}");
        // if (resp != null) {
        const snackBar = SnackBar(
          content: Text('Profile Updated'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        replaceRouteTo("/user-profile", context);
        // }

        // pop(context);
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

    return state
        ? CircularProgressIndicator()
        : ElevatedButton(
            onPressed: () {
              // replaceRouteTo("/homepage", context);
              // handleSumbit();
              // log("${loginDetails}");
              handleSumbit();
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(lightBlueColor),
            ),
            child: CustomText(
              text: "Update",
              fontSize: 16.sp,
              fontColor: blackColor,
            ),
          );
  }
}
