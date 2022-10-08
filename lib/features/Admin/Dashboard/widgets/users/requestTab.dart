import 'dart:developer';

import 'package:donationapp/features/Admin/Dashboard/widgets/users/donations.list.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/users/request.list.dart';
import 'package:flutter/material.dart';

import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/users/userTabLists.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class RequestTab extends StatelessWidget {
  const RequestTab({super.key, this.data});
  final data;
  @override
  Widget build(BuildContext context) {
    final penData = data['body'];
    // log("this from donations rrequest tab${penData}");

    return Container(
        height: ScreenUtil().screenHeight,
        padding: EdgeInsets.all(kPadding.w),
        child: ListView.builder(
          itemBuilder: (ctx, index) => RequestList(
            title: "${penData[index]['title']}",
            createdAt: "1h ago ",
            city: "${penData[index]['status']}",
            icons: Icons.account_circle_rounded,
            id: "${penData[index]['_id']}",
          ),
          itemCount: penData.length,
        ));
  }
}
