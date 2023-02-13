import 'dart:developer';

import 'package:donationapp/features/Admin/Dashboard/widgets/users/donations.list.dart';
import 'package:flutter/material.dart';

import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/users/userTabLists.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class DonationsTab extends StatelessWidget {
  const DonationsTab({super.key, this.data});
  final data;
  @override
  Widget build(BuildContext context) {
    final penData = data['body'];
    log("this from donations volunteer tab${penData[0]['_id']}");

    return Container(
        height: ScreenUtil().screenHeight,
        padding: EdgeInsets.all(kPadding.w),
        child: ListView.builder(
          itemBuilder: (ctx, index) => DonationsList(
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
