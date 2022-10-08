import 'package:flutter/material.dart';

import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/users/userTabLists.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class UsersTab extends StatelessWidget {
  const UsersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: ScreenUtil().screenHeight,
        padding: EdgeInsets.all(kPadding.w),
        child: ListView.builder(
          itemBuilder: (ctx, index) => const UserList(
              title: "Susan Khadka",
              createdAt: "1h ago ",
              city: "Rajkot",
              icons: Icons.account_circle_rounded),
          itemCount: 6,
        ));
  }
}
