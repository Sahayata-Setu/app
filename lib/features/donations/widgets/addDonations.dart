import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:donationapp/constant/common/GoogleButtomNavBar/GoogleButtomNavBar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/button/cusotm-button.dart';
import 'package:donationapp/constant/common/textfield/CustomTextArea.dart';
import 'package:donationapp/constant/common/textfield/CustomTextField.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/store/add-donation/add.donation.store.dart';
import 'package:donationapp/store/homepage/homepage.store.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../app.dart';
import '../../../../constant/common/NavBar/navbar.dart';

class AddDontaion extends ConsumerWidget {
  const AddDontaion({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final donationDetails = ref.watch(donationDetailsProvider);
    final donationProv = ref.watch(donationProvider);
    // log("this is donation deails ${donationDetails}");
    final selectedDate = ref.watch(datePickerDetails);
    // log("this is selected ${selectedDate}");
    final imageProv = ref.watch(idImageDonationProvider);
    log("this is fdrom ${donationDetails}");

    Future<void> _selectDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
          context: context,
          initialDate: selectedDate,
          firstDate: DateTime(2015, 8),
          lastDate: DateTime(2101));
      if (picked != null && picked != selectedDate) {
        // setState(() {
        ref.read(datePickerDetails.notifier).state = picked;
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
      ref.read(idImageDonationProvider.notifier).state = [...imageProv, req[0]];
    }

    handleSumbit() async {
      // log("message");
      try {
        final resp = await donationProv.createDonation(donationDetails,
            imageProv, DateFormat('yyyy-MM-dd').format(selectedDate));
        final snackBar = SnackBar(content: Text(resp['message']));
        ref.refresh(donationsOrRequestProvider('donation'));
        ref.refresh(idImageDonationProvider);
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
          // height: ScreenUtil().screenHeight + kPadding1,
          padding: const EdgeInsets.all(kPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // CustomText(
              //   text: "Title",
              //   fontColor: blackColor,
              //   fontSize: 16.sp,
              // ),
              // CustomTextField(
              //   refs: ref.read(donationDetailsProvider.notifier),
              //   label: "Name/Title",
              //   name: "title",
              // ),
              // CustomText(
              //   text: "Category",
              //   fontColor: blackColor,
              //   fontSize: 16.sp,
              // ),
              // CustomTextField(
              //   refs: ref.read(donationDetailsProvider.notifier),
              //   label: "Category",
              //   name: "category",
              // ),
              Container(
                margin: EdgeInsets.only(bottom: 10.h),
                child: CustomTextArea(
                  text: "Title",
                  hint: "Title",
                  isObscure: false,
                  name: "title",
                  refs: ref.read(donationDetailsProvider.notifier),
                ),
              ),

              //* Category should have dropdown
              Container(
                margin: EdgeInsets.only(bottom: 10.h),
                child: CustomTextArea(
                  text: "Category",
                  hint: "Category",
                  name: "category",
                  refs: ref.read(donationDetailsProvider.notifier),
                ),
              ),

              Container(
                margin: EdgeInsets.only(bottom: 10.h),
                child: CustomTextArea(
                  text: "Quantity",
                  hint: "Quantity",
                  name: "quantity",
                  refs: ref.read(donationDetailsProvider.notifier),
                ),
              ),

              // CustomText(
              //   text: "Quantity",
              //   fontColor: blackColor,
              //   fontSize: 16.sp,
              // ),
              // CustomTextField(
              //   refs: ref.read(donationDetailsProvider.notifier),
              //   label: "Quantity",
              //   name: "quantity",
              // ),

              Container(
                margin: EdgeInsets.only(bottom: 10.h),
                child: CustomTextArea(
                  text: "Pickup Details",
                  hint: "Pickup Location",
                  name: "pickupDetails",
                  refs: ref.read(donationDetailsProvider.notifier),
                ),
              ),

              // CustomText(
              //   text: "Pickup Details",
              //   fontColor: blackColor,
              //   fontSize: 16.sp,
              // ),
              // CustomTextField(
              //   refs: ref.read(donationDetailsProvider.notifier),
              //   label: "Preferred Details",
              //   name: "pickupDetails",
              // ),
              // CustomTextField(
              //   refs: ref.read(donationDetailsProvider.notifier),
              //   label: "Pickup Day",
              //   name: "pickupDay",
              // ),

              Container(
                margin: EdgeInsets.only(bottom: 10.h),
                child: CustomText(
                  text: "Select Date",
                  fontColor: blackColor,
                  fontSize: 16.sp,
                ),
              ),

              GestureDetector(
                onTap: () {
                  _selectDate(context);
                },
                child: Row(
                  children: [
                    Icon(Icons.date_range),
                    Container(
                      margin: EdgeInsets.only(left: 5.w),
                      child: CustomText(
                        text: DateFormat('yyyy-MM-dd').format(selectedDate),
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ),

              // DatePickerDialog(
              //   initialDate: selectedDate,
              //   firstDate: DateTime(2015, 8),
              //   lastDate: DateTime(2101),
              // ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10.h),
                child: CustomTextArea(
                  text: "Description",
                  hint: "Description",
                  name: "description",
                  refs: ref.read(donationDetailsProvider.notifier),
                ),
              ),
              // CustomText(
              //   text: "Description",
              //   fontColor: blackColor,
              //   fontSize: 16.sp,
              // ),
              // CustomTextField(
              //   refs: ref.read(donationDetailsProvider.notifier),
              //   label: "Descritpion",
              //   name: "description",
              //   lines: 2,
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
                margin: EdgeInsets.only(bottom: 5.h),
                child: CustomText(
                  text: "Photos",
                  fontSize: 16.sp,
                ),
              ),
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
                // width: 80,
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
                    fontSize: 14.sp,
                  ),
                ),
              )
            ],
          )),
      appbar: const NavBar(
        title: "Create Donation",
        showBadge: false,
      ),
      isAdmin: false,
      bottomNavBar: const GoogleButtomNavBar(showBottomNavBar: false),
    );
  }
}
