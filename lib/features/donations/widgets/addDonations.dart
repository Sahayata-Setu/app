import 'dart:developer';

import 'package:auto_route/annotations.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/button/cusotm-button.dart';
import 'package:donationapp/constant/common/textfield/CustomTextField.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/store/add-donation/add.donation.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../app.dart';
import '../../../../constant/common/BottomNavBar/BottomNavBar.dart';
import '../../../../constant/common/NavBar/navbar.dart';

class AddDontaion extends ConsumerWidget {
  const AddDontaion({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final donationDetails = ref.watch(donationDetailsProvider);
    log("this is donation deails ${donationDetails}");
    final selectedDate = ref.watch(datePickerDetails);
    log("this is selected ${selectedDate}");

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

    return App(
      component: Container(
          // height: ScreenUtil().screenHeight + kPadding1,
          padding: const EdgeInsets.all(kPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextField(
                refs: ref.read(donationDetailsProvider.notifier),
                label: "Name/Title",
                name: "title",
              ),
              CustomTextField(
                refs: ref.read(donationDetailsProvider.notifier),
                label: "Category",
                name: "category",
              ),
              CustomTextField(
                refs: ref.read(donationDetailsProvider.notifier),
                label: "Quantity",
                name: "quantity",
              ),
              CustomTextField(
                refs: ref.read(donationDetailsProvider.notifier),
                label: "Pickup Location",
                name: "pickUpLocation",
              ),
              CustomTextField(
                refs: ref.read(donationDetailsProvider.notifier),
                label: "Preferred Time",
                name: "prefTime",
              ),
              // CustomTextField(
              //   refs: ref.read(donationDetailsProvider.notifier),
              //   label: "Pickup Day",
              //   name: "pickupDay",
              // ),
              GestureDetector(
                onTap: () {
                  _selectDate(context);
                },
                child: Icon(Icons.date_range),
              ),
              CustomText(text: DateFormat('yyyy-MM-dd').format(selectedDate)),
              // DatePickerDialog(
              //   initialDate: selectedDate,
              //   firstDate: DateTime(2015, 8),
              //   lastDate: DateTime(2101),
              // ),
              CustomTextField(
                refs: ref.read(donationDetailsProvider.notifier),
                label: "Descritpion",
                name: "description",
                lines: 3,
                //focusBorder: secondaryBlue,
              ),
              CustomText(
                text: "Photos",
                fontSize: 14.sp,
              ),
              OutlinedButton(onPressed: () {}, child: const Icon(Icons.add)),
              Container(
                  // width: 80,
                  alignment: Alignment.center,
                  child: CustomElevatedButton(
                    height: 40.sp,
                    width: 180.sp,
                    fn: () {},
                    child: CustomText(
                      text: "Submit".toUpperCase(),
                      fontSize: 14.sp,
                    ),
                  ))
            ],
          )),
      appbar: const NavBar(
        title: "Create Donation",
        showBadge: false,
      ),
      isAdmin: false,
      bottomNavBar: const BottomNavBar(showBottomNavBar: false),
    );
  }
}
