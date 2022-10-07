import 'dart:convert';
import 'dart:developer';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/helpers/custom.toast.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/services/apply-for-volunteer/apply-for-volunteer.service.dart';
import 'package:donationapp/store/apply-for-volunteer/apply-for-volunteer.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonAreaVolunteer extends ConsumerWidget {
  const ButtonAreaVolunteer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final volunteerDetails = ref.watch(volunteerDetailsProvider);
    final volProv = ref.watch(volunteerProvider);
    final imageProv = ref.watch(idImageProvider);
    // log("ths is vol det${volunteerDetails}");

    onSumbit() async {
      try {
        final resp = await volProv.applyVolunter(volunteerDetails, imageProv);
        final snackBar = SnackBar(content: Text(resp['message']));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        pop(context);
      } catch (e) {
        // jsonDecode(e.toString());
        final val = jsonDecode(e.toString());
        // log("this is val ${val['message']}");

        final snackBar = SnackBar(content: Text(val['message']));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        pop(context);
        log("errror $e");
      }
    }

    return Center(
      child: GestureDetector(
        onTap: () {
          onSumbit();
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
