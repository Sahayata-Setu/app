import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/textfield/CustomTextArea.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/store/login/login.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddNgo extends StatelessWidget {
  const AddNgo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: "Add Preferred location"),
        backgroundColor: blueColor,
      ),
      body: Container(
        padding: EdgeInsets.only(left: kPadding.w, right: kPadding.w),
        child: Column(children: [
          CustomText(text: "Add Preferred location"),
          CustomTextArea(
            text: "Add locations",
            // refs: ref.read(loginDetailsProvider.notifier),
            name: "email",
          ),
        ]),
      ),
    );
  }
}
