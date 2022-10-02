import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../app.dart';
import '../../constant/common/BottomNavBar/BottomNavBar.dart';
import '../../constant/common/NavBar/navbar.dart';

class User_Profile extends StatelessWidget {
  const User_Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return App(
      component: Container(child: const Text("Profile")),
      appbar: const NavBar(
        title: "Profile",
        showBadge: true,
      ),
      bottomNavBar: const BottomNavBar(showBottomNavBar: true),
    );
  }
}
