import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import '../../../helpers/route.utils.dart';

class GoogleButtomNavBar extends StatefulWidget {
  final bool showBottomNavBar;
  const GoogleButtomNavBar({super.key, required this.showBottomNavBar});

  @override
  State<GoogleButtomNavBar> createState() => _GoogleButtomNavBarState();
}

class _GoogleButtomNavBarState extends State<GoogleButtomNavBar> {
  static int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print({_selectedIndex});
    });
    switch (_selectedIndex) {
      case 0:
        // if (_selectedIndex == 0) {
        replaceRouteTo("/homepage", context);
        //}
        break;
      case 1:
        // replaceRouteTo('/messages', context);
        // if (_selectedIndex == 1) {
        routeTo("/messages", context);
        // }
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
  }

  @override
  Widget build(BuildContext context) {
    return widget.showBottomNavBar
        ? Container(
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black.withOpacity(.1),
                )
              ],
            ),
            // child: SafeArea(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: GNav(
                    rippleColor: Colors.grey[300]!,
                    hoverColor: Colors.grey[100]!,
                    gap: 8,
                    activeColor: blueColor,
                    iconSize: 24,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    duration: Duration(milliseconds: 400),
                    tabBackgroundColor: backgroundColor,
                    color: Colors.black,
                    tabs: const [
                      GButton(
                        icon: LineIcons.home,
                        text: 'Home',
                      ),
                      GButton(
                        icon: LineIcons.facebookMessenger,
                        text: 'Messages',
                      ),
                      GButton(
                        icon: LineIcons.search,
                        text: 'Search',
                      ),
                      GButton(
                        icon: LineIcons.bell,
                        text: 'Notifcations',
                      ),
                      GButton(
                        icon: LineIcons.user,
                        text: 'Profile',
                      ),
                    ],
                    selectedIndex: _selectedIndex,
                    onTabChange: onTabTapped),
              ),

              //   padding:
              //       const EdgeInsets.symmetric(horizontal: 6.0, vertical: 8),
            ),
            //  ),
          )
        : SizedBox();
  }
}
