import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MessageDetails extends StatelessWidget {
  const MessageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return App(
        component: Container(
          child: Column(
            children: [],
          ),
        ),
        appbar: NavBar(title: "Sender Name", showBadge: false),
        bottomNavBar: BottomNavBar(showBottomNavBar: false),
        isAdmin: false);
  }
}
