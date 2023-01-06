import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app.dart';
import '../../../constant/common/GoogleButtomNavBar/GoogleButtomNavBar.dart';
import '../../../constant/common/NavBar/navbar.dart';
import '../../../constant/kconstant.dart';
import '../widgets/viewUserCard.dart';

class ViewUsers extends StatefulWidget {
  const ViewUsers({super.key});

  @override
  State<ViewUsers> createState() => _ViewUsersState();
}

class _ViewUsersState extends State<ViewUsers> {
  @override
  Widget build(BuildContext context) {
    return App(
      component: Container(
          height: ScreenUtil().screenHeight,
          padding: EdgeInsets.all(kPadding.w),
          child: ListView.builder(
            itemBuilder: (ctx, index) => ViewUserCard(
                name: "Frehiwot Haile",
                location: "Marwadi University",
                icons: Icons.notification_add),
            itemCount: 5,
          )),
      appbar: const NavBar(
        title: "Users",
        showBadge: true,
      ),
      isAdmin: false,
      bottomNavBar: const GoogleButtomNavBar(showBottomNavBar: true),
    );
  }
}
