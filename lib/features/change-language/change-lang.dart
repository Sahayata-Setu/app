import 'dart:developer';

import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/utils/store-service/language.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangeLanguage extends StatelessWidget {
  const ChangeLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    const languages = ["english", "hindi", "gujarati"];

    // handleChange() {}

    return App(
        appbar: NavBar(
          title: translation(context).changeLanguage,
          // route: "/homepage",
          showBadge: false,
        ),
        component: Container(
          padding: EdgeInsets.all(kPadding.h),
          child: Column(
            children: [
              DropdownButtonFormField(
                items: languages.map((String category) {
                  return DropdownMenuItem(
                    value: category,
                    child: Text(category),
                  );
                }).toList(),
                decoration: const InputDecoration(
                  label: Text("Language"),
                ),
                onChanged: (val) {
                  // ref.read(signUpDetailsProvider.notifier).state['language'] =
                  //     val.toString();

                  // log("This is dropdown val ${val}");
                },
              ),
              SizedBox(
                height: 15.h,
              ),
              ElevatedButton(
                onPressed: () {
                  // log("You just tapped change language");
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(blueColor),
                ),
                child: Text("Change"),
              ),
            ],
          ),
        ),
        bottomNavBar: BottomNavBar(showBottomNavBar: false),
        isAdmin: false);
  }
}
