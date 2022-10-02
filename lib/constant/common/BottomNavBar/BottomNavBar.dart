import 'package:flutter/material.dart';

import 'package:donationapp/constant/kconstant.dart';

class BottomNavBar extends StatelessWidget {
  final bool showBottomNavBar;
  const BottomNavBar({super.key, required this.showBottomNavBar});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: blueColor,
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: showBottomNavBar
            ? Row(
                //children inside bottom appbar
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(
                      Icons.home,
                      color: whiteColor,
                      size: kiconSize2,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.message,
                      color: whiteColor,
                      size: kiconSize2,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.notifications,
                      color: whiteColor,
                      size: kiconSize2,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.person,
                      color: whiteColor,
                      size: kiconSize2,
                    ),
                    onPressed: () {},
                  ),
                ],
              )
            : SizedBox());
  }
}
