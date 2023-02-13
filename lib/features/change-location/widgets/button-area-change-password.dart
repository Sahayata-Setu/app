import 'dart:developer';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/store/account-setting/account.setting.store.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ButtonAreaChangeLocation extends ConsumerWidget {
  const ButtonAreaChangeLocation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationDetails = ref.watch(locationDetailsProvider);
    // log('This is from button page : ${locationDetails}');
    final updateDetails = ref.watch(updateDetailsProfileProvider);
    final userId = StorageService.getId();
    final state = ref.watch(loadingAccount);

    handleSumbit() async {
      try {
        final res = await updateDetails.updateLocation(userId, locationDetails);
        log("This is response from locaation: ${res}");
      } catch (e) {
        log("Error: --${e}");
      }
    }

    return Center(
      child: GestureDetector(
        onTap: () => handleSumbit(),
        child: Container(
          height: 30.h,
          width: 100.w,
          decoration: BoxDecoration(
            color: lightBlueColor,
            borderRadius: BorderRadius.circular(18.r),
          ),
          child: state
              ? LoadingAnimationWidget.fourRotatingDots(
                  color: blueBackgroundColor, size: 20.h)
              : Center(
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
