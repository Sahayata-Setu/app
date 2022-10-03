import 'dart:developer';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/textfield/CustomTextField.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/apply-for-volunteer/widget/add-images.dart';
import 'package:donationapp/store/apply-for-volunteer/apply-for-volunteer.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldAreaVolunteer extends ConsumerWidget {
  const TextFieldAreaVolunteer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final volunteerDetails = ref.watch(volunteerDetailsProvider);
    log("this is from apply-from cvolunter${volunteerDetails}");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "Name",
          fontColor: whiteColor,
          fontSize: 20.sp,
        ),
        CustomText(
          text: "(Enter your name as document)",
          fontColor: whiteColor,
          fontSize: 14.sp,
        ),
        CustomTextField(
          ref: ref.read(volunteerDetailsProvider.notifier),
          label: "Name",
          name: "name",
          borderColor: whiteColor,
          // ref: ref,
        ),
        CustomText(
          text: "Contact No.",
          fontColor: whiteColor,
          fontSize: 20.sp,
        ),
        CustomTextField(
          // ref: ref,
          ref: ref.read(volunteerDetailsProvider.notifier),
          label: "Contact No.",
          name: "contactNo",
          borderColor: whiteColor,
        ),
        CustomText(
          text: "Email",
          fontColor: whiteColor,
          fontSize: 20.sp,
        ),
        CustomTextField(
          ref: ref.read(volunteerDetailsProvider.notifier),
          // ref: ref,
          label: "Email",
          name: "email",
          borderColor: whiteColor,
        ),
        AddImage(),
        SizedBox(
          height: 10.h,
        ),
        CustomText(
          text: "Reason to apply",
          fontColor: whiteColor,
          fontSize: 20.sp,
        ),
        CustomTextField(
          ref: ref.read(volunteerDetailsProvider.notifier),
          // ref: ref,
          label: "Reason",
          name: "reason",
          borderColor: whiteColor,
        ),
      ],
    );
  }
}
