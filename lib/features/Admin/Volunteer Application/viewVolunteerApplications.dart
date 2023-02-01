import 'package:donationapp/constant/common/NavBar/adminNavBar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/User/user-profile-dark-image.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/drawer.dart';
import 'package:donationapp/features/Admin/Volunteer%20Application/widgets/volunteerCard.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icon.dart';

class ViewVolunteerApplications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AdminNavBar(title: "Volunteer Applications"),
      ),
      drawer: Menu_Drawer(),
      body: Container(
        margin: EdgeInsets.all(10.h),
        child: Column(
          children: [
            InkWell(
              child: VolunteerCard(
                name: "Tasnimul Hasan Tauhid",
              ),
              onTap: () {
                routeTo("/volunteer-application-details", context);
              },
            )
          ],
        ),
      ),
    );
  }
}
