import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/textfield/CustomTextField.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/account-settings/widgets/button-account.dart';
import 'package:donationapp/features/account-settings/widgets/text-field-area-account.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/store/account-setting/account.setting.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountSettings extends ConsumerWidget {
  const AccountSettings({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return App(
      component: Container(
        color: blueBackgroundColor,
        height: MediaQuery.of(context).size.height,
        child: Container(
          padding: EdgeInsets.only(
            left: kPadding.w,
            right: kPadding.w,
            top: kPadding.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFieldAreaAccount(),
              ButtonAreaAccount(),
              SizedBox(
                height: 20.h,
              ),
              TextButton(
                onPressed: () {
                  routeTo("/change-location", context);
                },
                child: CustomText(
                  text: "Change Location",
                  fontSize: 16.sp,
                  fontColor: whiteColor,
                ),
              ),
              TextButton(
                onPressed: () {
                  routeTo("/change-password", context);
                },
                child: CustomText(
                  text: "Change Password",
                  fontSize: 16.sp,
                  fontColor: whiteColor,
                ),
              ),
            ],
          ),
        ),
      ),
      appbar: const NavBar(
        showBadge: false,
        title: "Account Settings",
      ),
      isAdmin: false,
      bottomNavBar: BottomNavBar(
        showBottomNavBar: false,
      ),
    );
  }
}
