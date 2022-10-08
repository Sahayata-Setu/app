import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/users/userTabLists.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class UsersTab extends StatelessWidget {
  const UsersTab({super.key, this.data});
  final data;
  @override
  Widget build(BuildContext context) {
    final penData = data['body'];
    log("this from single volunteer tab${penData}");

    return Container(
        height: ScreenUtil().screenHeight,
        padding: EdgeInsets.all(kPadding.w),
        child: ListView.builder(
          itemBuilder: (ctx, index) => UserList(
            title: "${penData[index]['applicant_name']}",
            createdAt: "1h ago ",
            city: "${penData[index]['status']}",
            icons: Icons.account_circle_rounded,
            id: "${penData[index]['_id']}",
          ),
          itemCount: penData.length,
        ));
  }
}
