import 'package:auto_route/annotations.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/button/cusotm-button.dart';
import 'package:donationapp/constant/common/textfield/CustomTextField.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app.dart';
import '../../../../constant/common/BottomNavBar/BottomNavBar.dart';
import '../../../../constant/common/NavBar/navbar.dart';

class AddDontaion extends StatelessWidget {
  const AddDontaion({super.key});

  @override
  Widget build(BuildContext context) {
    return App(
      component: Container(
          height: ScreenUtil().screenHeight + kPadding1,
          padding: const EdgeInsets.all(kPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTextField(label: "Name/Title", name: "title"),
              const CustomTextField(label: "Category", name: "category"),
              const CustomTextField(label: "Quantity", name: "quantity"),
              const CustomTextField(
                  label: "Pickup Location", name: "pickUpLocation"),
              const CustomTextField(label: "Preferred Time", name: "prefTime"),
              const CustomTextField(label: "Pickup Day", name: "pickupDay"),
              const CustomTextField(
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
      bottomNavBar: const BottomNavBar(showBottomNavBar: false),
    );
  }
}
