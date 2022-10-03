import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/button/cusotm-button.dart';
import 'package:donationapp/constant/common/textfield/CustomTextField.dart';
import 'package:donationapp/constant/kconstant.dart';

class AddRequest extends StatelessWidget {
  const AddRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return App(
      component: Container(
          height: ScreenUtil().screenHeight,
          padding: EdgeInsets.all(kPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTextField(label: "Category", name: "category"),
              const CustomTextField(label: "Items", name: "items"),
              const CustomTextField(label: "Quantity", name: "quantity"),
              const CustomTextField(
                label: "Who will be the beneficery?",
                name: "donatedTo",
                lines: 3,
                //focusBorder: secondaryBlue,
              ),
              const CustomTextField(
                label: "Request Detail",
                name: "detail",
                lines: 5,
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
        title: "Create Request",
        showBadge: false,
      ),
      bottomNavBar: const BottomNavBar(showBottomNavBar: false),
    );
  }
}
