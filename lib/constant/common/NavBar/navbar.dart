import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key, this.title, this.route});
  final title;
  final route;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: blueColor,
      title: title == null
          ? Padding(
              padding: EdgeInsets.only(
                right: kPadding.w,
              ),
              child: Container(
                width: double.infinity,
                height: 25.h,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search ..",
                      // hintStyle: TextStyle(),
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
            )
          : CustomText(
              text: title,
              fontSize: 18.sp,
            ),
      leading: route == null
          ? Container(
              // width: 0,
              )
          : IconButton(
              icon: Icon(Icons.arrow_back, color: whiteColor),
              onPressed: () => routeTo("${route}", context),
            ),
      // leading: Container(
      //   height: 30.h,
      //   width: double.infinity,
      //   color: whiteColor,
      // ),
    );
  }
}
