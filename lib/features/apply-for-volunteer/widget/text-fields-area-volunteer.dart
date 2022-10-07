import 'dart:developer';
import 'dart:io';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/textfield/CustomTextField.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/apply-for-volunteer/widget/add-images.dart';
import 'package:donationapp/features/apply-for-volunteer/widget/button-area-volunteer.dart';
import 'package:donationapp/store/apply-for-volunteer/apply-for-volunteer.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldAreaVolunteer extends ConsumerWidget {
  const TextFieldAreaVolunteer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final volunteerDetails = ref.watch(volunteerDetailsProvider);
    // log("this is from apply-from cvolunter${volunteerDetails}");
    final imageProv = ref.watch(idImageProvider);
    log("${imageProv}");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "Reason to apply",
          fontColor: whiteColor,
          fontSize: 18.sp,
        ),
        CustomTextField(
          refs: ref.read(volunteerDetailsProvider.notifier),
          // ref: ref,
          label: "Reason",
          name: "reason",
          borderColor: whiteColor,
        ),
        CustomText(
          text: "Please upload your id",
          fontColor: whiteColor,
          fontSize: 18.sp,
        ),
        SizedBox(
          height: 8.h,
        ),
        imageProv.isEmpty
            ? Container()
            : SizedBox(
                height: 200.h,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: imageProv.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100.h,
                      width: double.infinity,
                      decoration: BoxDecoration(),
                      child: Image.file(
                        File(imageProv[index]['filePath']),
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                ),
              ),
        AddImage(),
        SizedBox(
          height: 10.h,
        ),
        ButtonAreaVolunteer(),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
