import 'package:auto_route/annotations.dart';
import 'package:donationapp/constant/common/textfield/CustomTextField.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app.dart';
import '../../../../constant/common/BottomNavBar/BottomNavBar.dart';
import '../../../../constant/common/NavBar/navbar.dart';

class Donation_Detail extends StatelessWidget {
  final donationId;
  const Donation_Detail({super.key, @PathParam('id') this.donationId});

  @override
  Widget build(BuildContext context) {
    return App(
      component: Container(
          height: ScreenUtil().screenHeight,
          padding: EdgeInsets.all(kPadding),
          child: Column(
            children: [CustomTextField(label: "Category", name: "category")],
          )),
      appbar: NavBar(
        title: "Donations",
        showBadge: false,
      ),
      bottomNavBar: BottomNavBar(showBottomNavBar: false),
    );
    ;
  }
}
