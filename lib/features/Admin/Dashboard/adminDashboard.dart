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
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return App(
      component: Container(
          padding: EdgeInsets.only(top: kPadding1),
          height: ScreenUtil().screenHeight,
          color: blackColor,
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
                  children: const [
                    DashboardCards(
                      title: "Users",
                      number: "9555",
                      color: secondaryBlue,
                    ),
                    DashboardCards(
                      title: "Volunters",
                      number: "45",
                      color: secondaryBlue,
                    ),
                    DashboardCards(
                      title: "Donation Completed",
                      number: "5555",
                      color: secondaryBlue,
                    ),
                    DashboardCards(
                      title: "Total Beneficery",
                      number: "358",
                      color: secondaryBlue,
                    ),
                  ],
                ),
              ),
              const OptionsTab()
            ],
          )),
      appbar: const NavBar(
        title: "Dashboard",
        showBadge: false,
        isAdmin: true,
      ),
      isAdmin: true,
      // drawer: Drawer(),
      bottomNavBar: const BottomNavBar(showBottomNavBar: false),
    );
  }
}
