import 'package:donationapp/constant/common/NavBar/adminNavBar.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/drawer.dart';
import 'package:flutter/material.dart';

class VolunteerApplicationDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AdminNavBar(title: "Application Details"),
      ),
      drawer: Menu_Drawer(),
      body: Container(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
