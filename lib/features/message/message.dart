import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:flutter/cupertino.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return App(
      component: Container(child: Text("message")),
      appbar: NavBar(
        title: "Messages",
        showBadge: true,
      ),
      bottomNavBar: BottomNavBar(showBottomNavBar: true),
    );
  }
}
