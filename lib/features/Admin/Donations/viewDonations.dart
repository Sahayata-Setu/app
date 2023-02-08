import 'package:donationapp/constant/common/NavBar/adminNavBar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/horizontal-line/horizontal-line.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/drawer.dart';
import 'package:donationapp/features/Admin/Donations/widgets/donationTile.dart';
import 'package:donationapp/features/Admin/Users/widgets/userCard.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icon.dart';

class ViewDonations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AdminNavBar(title: "Donations"),
      ),
      drawer: Menu_Drawer(),
      body: Container(
        padding: EdgeInsets.all(10.h),
        // color: whiteColor,
        child: Column(
          children: [
            InkWell(
              child: DonationTile(
                donerName: "Tasnimul Hasan Tauhid",
                donationCategory: "Foods",
                donerLocation: "Gavridad",
              ),
              onTap: () {
                routeTo("/donatedDetails", context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
