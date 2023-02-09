import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:donationapp/constant/common/GoogleButtomNavBar/GoogleButtomNavBar.dart';
import 'package:donationapp/constant/common/textfield/CustomTextArea.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/store/add-need/add-need.store.dart';
import 'package:donationapp/store/homepage/homepage.store.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/button/cusotm-button.dart';
import 'package:donationapp/constant/common/textfield/CustomTextField.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:intl/intl.dart';

class AddRequest extends ConsumerWidget {
  const AddRequest({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final needDetails = ref.watch(needDetailsProvider);
    final needProv = ref.watch(needProvider);
    // log("this is donation deails ${donationDetails}");
    final selectedDate = ref.watch(datePickerNeedDetails);
    log("this is selected ${DateFormat('yyyy-MM-dd').format(selectedDate)}");
    final imageProv = ref.watch(idImageNeedProvider);
    log("this is fdrom ${imageProv}");

    Future<void> _selectDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
          context: context,
          initialDate: selectedDate,
          firstDate: DateTime(2015, 8),
          lastDate: DateTime(2101));
      if (picked != null && picked != selectedDate) {
        // setState(() {
        ref.read(datePickerNeedDetails.notifier).state = picked;
        // });
      }
    }

    selectImage() async {
      final images = await FilePicker.platform.pickFiles(
        allowMultiple: false,
      );
      // log("this is image ${images}");
      if (images == null) return;
      final paths = images.files.map((PlatformFile image) => image.path);
      List req = [];
      for (var item in paths) {
        req.add({"name": "image", 'filePath': item});
      }
      // log("${req}");
      ref.read(idImageNeedProvider.notifier).state = [...imageProv, req[0]];
    }

    handleSumbit() async {
      // log("message");
      try {
        final resp = await needProv.createNeed(needDetails, imageProv,
            DateFormat('yyyy-MM-dd').format(selectedDate));
        final snackBar = SnackBar(content: Text(resp['message']));
        ref.refresh(donationsOrRequestProvider('request'));
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

    return App(
      component: Container(
        height: ScreenUtil().screenHeight,
        padding: EdgeInsets.all(kPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // CustomTextField(
            //   label: "Title",
            //   name: "title",
            //   refs: ref.read(needDetailsProvider.notifier),
            // ),
            CustomTextArea(
              text: "Title",
              name: "title",
              refs: ref.read(needDetailsProvider.notifier),
              hint: "Title",
            ),
            // CustomTextField(
            //   label: "Category",
            //   name: "category",
            //   refs: ref.read(needDetailsProvider.notifier),
            // ),
            CustomTextArea(
              text: "Category",
              name: "category",
              refs: ref.read(needDetailsProvider.notifier),
              hint: "Category",
            ),
            // CustomTextField(
            //   label: "Quantity",
            //   name: "quantity",
            //   refs: ref.read(needDetailsProvider.notifier),
            // ),
            CustomTextArea(
              text: "Quantity",
              name: "quantity",
              refs: ref.read(needDetailsProvider.notifier),
              hint: "Quantity",
            ),

            // CustomTextField(
            //   label: "Pickup Details",
            //   name: "pickupDetails",
            //   refs: ref.read(needDetailsProvider.notifier),
            // ),
            CustomTextArea(
              text: "Pickup Details",
              name: "pickupDetails",
              refs: ref.read(needDetailsProvider.notifier),
              hint: "Pickup Details",
            ),
            // CustomTextField(
            //   label: "Description",
            //   name: "description",
            //   lines: 3,
            //   refs: ref.read(needDetailsProvider.notifier),
            //   //focusBorder: secondaryBlue,
            // ),
            Container(
              margin: EdgeInsets.only(bottom: 10.h),
              child: CustomTextArea(
                text: "Description",
                name: "description",
                refs: ref.read(needDetailsProvider.notifier),
                hint: "Description",
              ),
            ),
            // CustomTextField(
            //   label: "Request Detail",
            //   name: "detail",
            //   lines: 5,
            //   //focusBorder: secondaryBlue,
            // ),
            imageProv.isEmpty
                ? Container()
                : SizedBox(
                    height: 100.h,
                    width: 100.w,
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
            Container(
              margin: EdgeInsets.only(bottom: 10.h),
              child: CustomText(
                text: "Photos",
                fontSize: 16.sp,
              ),
            ),
            Container(
              child: OutlinedButton(
                onPressed: () {
                  selectImage();
                },
                child: Container(
                  height: 100.h,
                  width: 100.w,
                  child: const Icon(Icons.add),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: kMargin.h),
              alignment: Alignment.center,
              child: CustomElevatedButton(
                height: 40.sp,
                width: 100.sp,
                fn: () {
                  handleSumbit();
                },
                child: CustomText(
                  text: "Submit".toUpperCase(),
                  fontSize: 14.sp,
                ),
              ),
            )
          ],
        ),
      ),
      appbar: const NavBar(
        title: "Create Need",
        showBadge: false,
      ),
      isAdmin: false,
      bottomNavBar: const GoogleButtomNavBar(showBottomNavBar: false),
    );
  }
}
