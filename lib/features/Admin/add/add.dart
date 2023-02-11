import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/textfield/CustomTextArea.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Add extends StatelessWidget {
  const Add({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: "Add Location & NGOs"),
        backgroundColor: blueColor,
      ),
      body: Container(
        child: CustomText(text: "Hello"),
      ),
    );
  }
}
