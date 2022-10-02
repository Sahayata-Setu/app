import 'dart:developer';

import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/homepage/widgets/dropdown.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/store/homepage/homepage.store.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final token = StorageService.getToken();
    log("this is token${ref.watch(categoriesProvider)}");
    // var choosenValue;
    return App(
      component: Container(
        color: backgroundColor,
        height: MediaQuery.of(context).size.height,
        child: Container(
          padding: EdgeInsets.only(
            left: kPadding.w,
            right: kPadding.w,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "DONATIONS",
                    fontColor: blackColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  CustomText(
                    text: "NEED",
                    fontColor: blackColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  CategoriesDropDown(
                    ref: ref,
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  replaceRouteTo("/user-profile", context);
                },
                child: CustomText(
                  text: "userprofile",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  replaceRouteTo("/search", context);
                },
                child: CustomText(
                  text: "search",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  replaceRouteTo("/signup", context);
                },
                child: CustomText(
                  text: "signup",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  replaceRouteTo("/apply-volunteer", context);
                },
                child: CustomText(
                  text: "volunter",
                ),
              ),
            ],
          ),
        ),
      ),
      appbar: NavBar(
        title: "HOME",
      ),
    );
  }
}
