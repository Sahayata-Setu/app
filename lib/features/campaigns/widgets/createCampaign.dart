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

class CreateCampaign extends StatelessWidget {
  const CreateCampaign({super.key});

  @override
  Widget build(BuildContext context) {
    return App(
      component: Container(
          height: ScreenUtil().screenHeight + kPadding1,
          padding: const EdgeInsets.all(kPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTextField(
                  label: "Campaign Name", name: "campaignName"),
              const CustomTextField(
                  label: "Event Location", name: "eventLocation"),
              const CustomTextField(label: "Time", name: "eventTime"),
              const CustomTextField(label: "Start day", name: "startDay"),
              const CustomTextField(label: "End day", name: "endday"),
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
                    fn: () {},
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
      bottomNavBar: const BottomNavBar(showBottomNavBar: false),
    );
  }
}
