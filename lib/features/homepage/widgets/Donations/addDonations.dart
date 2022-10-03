import 'package:auto_route/annotations.dart';
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
          height: ScreenUtil().screenHeight,
          padding: EdgeInsets.all(kPadding),
          child: Column(
            children: [
              CustomTextField(label: "Category", name: "category"),
              CustomTextField(label: "Pickup Location", name: "pickUpLocation"),
              CustomTextField(label: "Name/Title", name: "title"),
              CustomTextField(label: "Preferred Time", name: "prefTime"),
              CustomTextField(label: "Pickup Day", name: "pickupDay"),
              CustomTextField(label: "Quantity", name: "quantity"),
              CustomTextField(label: "Descritpion", name: "description"),
            ],
          )),
      appbar: NavBar(
        title: "Donation Details",
        showBadge: false,
      ),
      bottomNavBar: BottomNavBar(showBottomNavBar: false),
    );
    ;
  }
}
