import 'package:donationapp/features/Admin/AdminStruct.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app.dart';
import '../../../constant/common/GoogleButtomNavBar/GoogleButtomNavBar.dart';
import '../../../constant/common/NavBar/adminNavBar.dart';
import '../../../constant/common/NavBar/navbar.dart';
import '../../../constant/kconstant.dart';
import '../widgets/viewUserCard.dart';

class ViewUsers extends StatefulWidget {
  const ViewUsers({super.key});

  @override
  State<ViewUsers> createState() => _ViewUsersState();
}

class _ViewUsersState extends State<ViewUsers> {
  String dropdownvalue = 'Users';

  // List of options in our dropdown menu
  var options = [
    'Users',
    'Volunteers',
  ];
  @override
  Widget build(BuildContext context) {
    return AdminStruct(
      component: Container(
          padding: EdgeInsets.only(
              top: 8, left: kPadding.w, right: kPadding.w, bottom: kPadding.w),
          child: Column(children: [
            DropdownButton(
              focusColor: blueColor,
              hint: Text("Sort"),
              value: dropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: options.map((String option) {
                return DropdownMenuItem(
                  value: option,
                  child: Text(option),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (ctx, index) => ViewUserCard(
                    name: "Frehiwot Haile",
                    location: "Marwadi University",
                    icons: Icons.notification_add),
                itemCount: 5,
              ),
            ),
          ])),
      appBar: AdminNavBar(title: "Users"),
    );
  }
}
