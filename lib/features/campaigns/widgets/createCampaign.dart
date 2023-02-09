import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:donationapp/constant/common/GoogleButtomNavBar/GoogleButtomNavBar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/button/cusotm-button.dart';
import 'package:donationapp/constant/common/textfield/CustomTextArea.dart';
import 'package:donationapp/constant/common/textfield/CustomTextField.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/campaigns/store/campaign-store.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/helpers/time.dart';
import 'package:donationapp/store/homepage/homepage.store.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app.dart';
import '../../../../constant/common/NavBar/navbar.dart';

class CreateCampaign extends ConsumerWidget {
  const CreateCampaign({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final campaings = ref.watch(campaignDetails);
    // log("Campaign Details: ${campaings}");
    final imageProvider = ref.watch(campaignPhotoProvider);
    // log("Campaign images: ${imageProvider}");

    //Campaign Provider
    final campaignStore = ref.watch(campaignProvider);

    //Start Date
    final startDateProv = ref.watch(startDateProvider);
    // log("Campaign start date: ${startDateProv}");
    //ENd Date
    final endDateProv = ref.watch(endDateProvider);
    // log("Campaign end date: ${endDateProv}");

    selectImage() async {
      final images = await FilePicker.platform.pickFiles(
        allowMultiple: true,
      );
      // log("this is image ${images}");
      if (images == null) return;
      final paths = images.files.map((PlatformFile image) => image.path);
      List req = [];
      for (var item in paths) {
        req.add({"name": "image", 'filePath': item});
      }
      // log("${req}");
      ref.read(campaignPhotoProvider.notifier).state = [
        ...imageProvider,
        req[0]
      ];
    }

    handleSumbit() async {
      // log("message");
      try {
        final resp = await campaignStore.createCampaign(
          campaings,
          imageProvider,
          dateFormat(startDateProv),
          dateFormat(endDateProv),
        );
        final snackBar = SnackBar(content: Text(resp['message']));
        ref.refresh(getApprovedCampaignsProvider(''));
        // log("this from campaign response : -----${resp}");

        ref.refresh(campaignPhotoProvider);
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        pop(context);
      } catch (e) {
        final val = jsonDecode(e.toString());
        final snackBar = SnackBar(content: Text(val['message']));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        // pop(context);
        log("this from lodgg${e}");
      }
      // log("this is form don ${resp}");
    }

    DateTime selectedDate = DateTime.now();

    Future<void> _selectDate(BuildContext context, refs) async {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101),
      );
      if (picked != null && picked != selectedDate) {
        refs.state = picked;
      }
    }

    return App(
      component: Container(
          // height: ScreenUtil().screenHeight + kPadding1,
          padding: const EdgeInsets.only(
            right: kPadding,
            left: kPadding,
            bottom: kPadding,
            top: kPadding / 2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextArea(
                text: "Campaign Name",
                name: "title",
                refs: ref.read(campaignDetails.notifier),
                hint: "Campaign Name",
              ),
              // CustomTextField(
              //   label: "Campaign Name",
              //   name: "title",
              //   refs: ref.read(campaignDetails.notifier),
              // ),
              // CustomTextField(
              //   label: "Event Location",
              //   name: "location",
              //   refs: ref.read(campaignDetails.notifier),
              // ),
              CustomTextArea(
                text: "Event Location",
                name: "location",
                refs: ref.read(campaignDetails.notifier),
                hint: "Event Location",
              ),

              // CustomTextField(
              //   label: "Time",
              //   name: "eventTime",
              //   refs: ref.read(campaignDetails.notifier),
              // ),
              CustomTextArea(
                text: "Time",
                name: "eventTime",
                refs: ref.read(campaignDetails.notifier),
                hint: "Event Time",
              ),

              //Start day
              Container(
                margin: EdgeInsets.only(bottom: 10.h, top: 10.h),
                child: CustomText(
                  text: "Select Date",
                  fontColor: blackColor,
                  fontSize: 16.sp,
                ),
              ),

              GestureDetector(
                onTap: () {
                  _selectDate(
                    context,
                    ref.read(startDateProvider.notifier),
                  );
                },
                child: Row(
                  children: [
                    Icon(Icons.date_range),
                    Container(
                      margin: EdgeInsets.only(left: 5.w),
                      child: CustomText(
                        text: "${dateFormat(startDateProv)}",
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ),

              // Start Day
              // CustomText(
              //   text: "Select start date",
              //   fontSize: 14.sp,
              // ),
              // Row(
              //   children: [
              //     GestureDetector(
              //       onTap: () {
              //         _selectDate(
              //           context,
              //           ref.read(startDateProvider.notifier),
              //         );
              //       },
              //       child: Icon(
              //         Icons.date_range,
              //         size: 30.sp,
              //       ),
              //     ),
              //     SizedBox(
              //       width: 10.w,
              //     ),
              //     CustomText(text: "${dateFormat(startDateProv)}"),
              //     // convertToAgo(dateTime)
              //   ],
              // ),

              SizedBox(
                height: 10.h,
              ),

              // End day
              Container(
                margin: EdgeInsets.only(bottom: 10.h, top: 10.h),
                child: CustomText(
                  text: "Select Date",
                  fontColor: blackColor,
                  fontSize: 16.sp,
                ),
              ),

              GestureDetector(
                onTap: () {
                  _selectDate(
                    context,
                    ref.read(endDateProvider.notifier),
                  );
                },
                child: Row(
                  children: [
                    Icon(Icons.date_range),
                    Container(
                      margin: EdgeInsets.only(left: 5.w),
                      child: CustomText(
                        text: "${dateFormat(endDateProv)}",
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ),

              // End day
              // CustomText(
              //   text: "Select End date",
              //   fontSize: 14.sp,
              // ),
              // Row(
              //   children: [
              //     GestureDetector(
              //       onTap: () {
              //         _selectDate(
              //           context,
              //           ref.read(endDateProvider.notifier),
              //         );
              //       },
              //       child: Icon(
              //         Icons.date_range,
              //         size: 30.sp,
              //       ),
              //     ),
              //     SizedBox(
              //       width: 10.w,
              //     ),
              //     CustomText(text: "${dateFormat(endDateProv)}"),
              //   ],
              // ),

              // CustomTextField(
              //   label: "Descritpion",
              //   name: "description",
              //   lines: 3,
              //   refs: ref.read(campaignDetails.notifier),
              //   //focusBorder: secondaryBlue,
              // ),

              CustomTextArea(
                text: "Description",
                name: "description",
                refs: ref.read(campaignDetails.notifier),
                hint: "Description",
              ),

              // CustomText(
              //   text: "Photos",
              //   fontSize: 14.sp,
              // ),

              Container(
                margin: EdgeInsets.only(bottom: 10.h, top: 10.h),
                child: CustomText(
                  text: "Photos",
                  fontColor: blackColor,
                  fontSize: 16.sp,
                ),
              ),
              imageProvider.isNotEmpty
                  ? SizedBox(
                      height: 250.h,
                      width: double.infinity.w,
                      child: ListView.builder(
                        // itemExtent: 100,
                        scrollDirection: Axis.horizontal,
                        itemCount: imageProvider.length,
                        // padding: EdgeInsets.all(18),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 250.h,
                              width: 250.w,
                              decoration: BoxDecoration(),
                              child: Image.file(
                                File(imageProvider[index]['filePath']),
                                fit: BoxFit.fill,
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  : SizedBox(),
              OutlinedButton(
                onPressed: () {
                  selectImage();
                },
                child: Container(
                  height: 100.h,
                  width: 100.w,
                  child: const Icon(Icons.add),
                ),
              ),

              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: kMargin.h),
                  child: CustomElevatedButton(
                    height: 40.sp,
                    width: 100.sp,
                    fn: () {
                      handleSumbit();
                    },
                    child: CustomText(
                      text: "Submit".toUpperCase(),
                      fontSize: 16.sp,
                    ),
                  ))
            ],
          )),
      appbar: const NavBar(
        title: "Create Campagin",
        showBadge: false,
      ),
      isAdmin: false,
      bottomNavBar: const GoogleButtomNavBar(showBottomNavBar: false),
    );
  }
}
