import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:donationapp/constant/common/GoogleButtomNavBar/GoogleButtomNavBar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/button/cusotm-button.dart';
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
          padding: const EdgeInsets.all(kPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextField(
                label: "Campaign Name",
                name: "title",
                refs: ref.read(campaignDetails.notifier),
              ),
              CustomTextField(
                label: "Event Location",
                name: "location",
                refs: ref.read(campaignDetails.notifier),
              ),
              CustomTextField(
                label: "Time",
                name: "eventTime",
                refs: ref.read(campaignDetails.notifier),
              ),
              //Start day
              CustomText(
                text: "Select start date",
                fontSize: 14.sp,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      _selectDate(
                        context,
                        ref.read(startDateProvider.notifier),
                      );
                    },
                    child: Icon(
                      Icons.date_range,
                      size: 30.sp,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  CustomText(text: "${dateFormat(startDateProv)}"),
                  // convertToAgo(dateTime)
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              //End day
              CustomText(
                text: "Select End date",
                fontSize: 14.sp,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      _selectDate(
                        context,
                        ref.read(endDateProvider.notifier),
                      );
                    },
                    child: Icon(
                      Icons.date_range,
                      size: 30.sp,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  CustomText(text: "${dateFormat(endDateProv)}"),
                ],
              ),

              CustomTextField(
                label: "Descritpion",
                name: "description",
                lines: 3,
                refs: ref.read(campaignDetails.notifier),
                //focusBorder: secondaryBlue,
              ),
              CustomText(
                text: "Photos",
                fontSize: 14.sp,
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
                child: const Icon(Icons.add),
              ),
              Container(
                  // width: 80,
                  alignment: Alignment.center,
                  child: CustomElevatedButton(
                    height: 40.sp,
                    width: 180.sp,
                    fn: () {
                      handleSumbit();
                    },
                    child: CustomText(
                      text: "Submit".toUpperCase(),
                      fontSize: 14.sp,
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
