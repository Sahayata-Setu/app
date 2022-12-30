import 'dart:developer';

import 'package:donationapp/constant/common/Icon/custom-icon.dart';
import 'package:donationapp/helpers/route.utils.dart';
// import 'package:donationapp/routes/app.router.gr.dart';
import 'package:flutter/material.dart';
// import 'package:line_icons/line_icons.dart';

import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavBar extends StatefulWidget {
  final bool showBottomNavBar;
  const BottomNavBar({super.key, required this.showBottomNavBar});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;

    void onTabTapped(int index) {
      setState(() {
        _selectedIndex = index;
        print({_selectedIndex});

        switch (index) {
          case 0:
            if (_selectedIndex == index) {
              replaceRouteTo("/homepage", context);
            }
            break;
          case 1:
            // replaceRouteTo('/messages', context);
            if (_selectedIndex == index) {
              routeTo("/messages", context);
            }
            break;
          case 2:
            routeTo('/search', context);
            break;
          case 3:
            routeTo('/notifications', context);
            break;
          case 4:
            routeTo('/user-profile', context);
            break;
        }

        ///call your PageController.jumpToPage(index) here too, if needed
      });
    }

    // log("this is contenct${context.set}");
    return widget.showBottomNavBar
        ? BottomNavigationBar(
            currentIndex: _selectedIndex,
            selectedItemColor: blueColor,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: false,
            onTap: onTabTapped,
            items: [
                BottomNavigationBarItem(
                  icon: CustomIcon(
                    icon: Icons.home,
                    size: 25.sp,
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                    icon: CustomIcon(
                      icon: Icons.message,
                      size: 25.sp,
                    ),
                    label: "Messages"),
                BottomNavigationBarItem(
                    icon: CustomIcon(
                      icon: Icons.search,
                      size: 25.sp,
                    ),
                    label: "Search"),
                BottomNavigationBarItem(
                    icon: CustomIcon(
                      icon: Icons.notifications,
                      size: 25.sp,
                    ),
                    label: "Notifications"),
                BottomNavigationBarItem(
                    icon: CustomIcon(
                      icon: Icons.person,
                      size: 25.sp,
                    ),
                    label: "Profile")
              ])
        : const SizedBox();
  }
}
