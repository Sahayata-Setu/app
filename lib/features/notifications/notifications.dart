import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/notifications/widgets/notificationCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return App(
      component: Container(
          // height: ScreenUtil().screenHeight,
          padding: EdgeInsets.all(kPadding.w),
          child: ListView.builder(
            itemBuilder: (ctx, index) => NoticationItem(
                title: "Your donation has been approved.",
                createdAt: "5min ago",
                icons: Icons.notification_add),
            itemCount: 5,
          )),
      appbar: const NavBar(
        title: "Notifications",
        showBadge: true,
      ),
      isAdmin: false,
      bottomNavBar: const BottomNavBar(showBottomNavBar: true),
    );
  }
}
