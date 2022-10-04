import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return App(
      component: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        color: backgroundColor,
        child: Column(),
      ),
      appbar: const NavBar(
        showBadge: false,
        title: "Search",
        // route: "/homepage",
      ),
      bottomNavBar: BottomNavBar(showBottomNavBar: false),
    );
  }
}
