import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return App(
      component: Container(child: const Text("notifications")),
      appbar: const NavBar(
        title: "Notifications",
        showBadge: true,
      ),
      bottomNavBar: const BottomNavBar(showBottomNavBar: true),
    );
  }
}
