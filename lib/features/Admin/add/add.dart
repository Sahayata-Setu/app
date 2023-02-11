import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/textfield/CustomTextArea.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/drawer.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Add extends StatelessWidget {
  const Add({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlueColor,
      appBar: AppBar(
        title: CustomText(text: "Add"),
        backgroundColor: blueColor,
      ),
      drawer: Menu_Drawer(),
      body: Container(
        // color: lightBlueColor,
        margin: EdgeInsets.all(10.h),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                routeTo("/add-preferred-location", context);
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: Container(
                    margin: EdgeInsets.all(10.h),
                    child: CustomText(
                      text: "Add Location",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                routeTo("/add-ngo", context);
              },
              child: Container(
                margin: EdgeInsets.only(top: 10.h),
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: Container(
                    margin: EdgeInsets.all(10.h),
                    child: CustomText(
                      text: "Add NGOs",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
