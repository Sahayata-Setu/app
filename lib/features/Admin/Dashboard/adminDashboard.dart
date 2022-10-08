import 'dart:developer';

import 'package:donationapp/constant/common/NavBar/adminNavBar.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/drawer.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/optionsTab.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/dashbordCards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:donationapp/app.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:flutter/cupertino.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key, this.data});
  final data;
  @override
  Widget build(BuildContext context) {
    final dashData = data['body'];
    log("this is from admin dashboard${dashData}");
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AdminNavBar(title: "Dashboard"),
      ),
      drawer: Drawer(
        backgroundColor: blueColor,
        child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                    //color: Colors.blue,
                    ),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close)),
              ),
              ListTile(
                title: const Text(
                  'Item 1',
                  style: TextStyle(color: blackColor),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                  title: const Text('Item 2'),
                  onTap: () {
                    Navigator.pop(context);
                  })
            ]),
      ),
      body: Container(
          padding: EdgeInsets.only(top: kPadding1),
          height: ScreenUtil().screenHeight,
          color: backgroundColor,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    top: kPadding, right: kPadding, left: kPadding),
                height: 250,
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 4 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  // crossAxisCount: 2,
                  // crossAxisSpacing: 4,
                  // mainAxisSpacing: 3,
                  // shrinkWrap: false,
                  children: [
                    DashboardCards(
                      title: "Users",
                      number: "${dashData['users']['total'].toInt()}",
                      color: secondaryBlue,
                    ),
                    DashboardCards(
                      title: "Volunters",
                      number: "${dashData['volunteers']['total']}",
                      color: secondaryBlue,
                    ),
                    DashboardCards(
                      title: "Approved Donations",
                      number: "${dashData['donations']['total']}",
                      color: secondaryBlue,
                    ),
                    DashboardCards(
                      title: "Total Beneficery",
                      number: "${dashData['requests']['total']}",
                      color: secondaryBlue,
                    ),
                  ],
                ),
              ),
              const OptionsTab()
            ],
          )),
    );
  }
}
