import 'package:donationapp/constant/common/NavBar/adminNavBar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/User/user-profile-dark-image.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/drawer.dart';
import 'package:donationapp/features/Admin/Requests/widgets/requestTile.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewRequests extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AdminNavBar(title: "Requests"),
      ),
      drawer: Menu_Drawer(),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.h),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                replaceRouteTo("/requestDetails", context);
              },
              child: RequestTile(
                donerName: "Tasnimul Hasan Tauhid",
                donationCategory: "Foods",
                donerLocation: "Rajkot",
              ),
            )
          ],
        ),
      ),
    );
  }
}
