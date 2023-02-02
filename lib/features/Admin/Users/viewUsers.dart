import 'dart:developer';
import 'package:donationapp/constant/common/Text/custom-text.dart';

import 'package:donationapp/constant/common/Admin-Drawer/admin-drawer.dart';
import 'package:donationapp/constant/common/NavBar/adminNavBar.dart';
import 'package:donationapp/constant/common/horizontal-line/horizontal-line.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/drawer.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/optionsTab.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/dashbordCards.dart';
import 'package:donationapp/features/Admin/Users/userCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:donationapp/app.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:line_icons/line_icon.dart';

class ViewUsers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AdminNavBar(title: "Users"),
      ),
      drawer: Menu_Drawer(),
      body: Container(
        padding: EdgeInsets.all(10.h),
        color: whiteColor,
        child: Column(
          children: [
            UserCard(
              userName: "Tushar Banek",
              userLocation: "Andaman Nicobar",
            ),
            HorizontalLine(
              color: lightBlueColor,
            ),
            UserCard(
              userName: "Pintu Gupta",
              userLocation: "Birgunj",
            ),
            HorizontalLine(
              color: lightBlueColor,
            ),
          ],
        ),
      ),
    );
  }
}
