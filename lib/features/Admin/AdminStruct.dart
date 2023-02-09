import 'package:donationapp/constant/common/NavBar/adminNavBar.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/drawer.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/optionsTab.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/dashbordCards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:donationapp/constant/kconstant.dart';

class AdminStruct extends StatefulWidget {
  final Widget appBar;
  final Widget component;
  AdminStruct({required this.appBar, required this.component});

  @override
  State<AdminStruct> createState() => _AdminStructState();
}

class _AdminStructState extends State<AdminStruct> {
  @override
  Widget build(BuildContext context) {
    // log("this is from admin dashboard${dashData}");
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60), child: widget.appBar),
        drawer: Menu_Drawer(),
        body: Container(
            padding: EdgeInsets.only(top: kPadding1),
            height: ScreenUtil().screenHeight,
            color: backgroundColor,
            child: widget.component));
  }
}
