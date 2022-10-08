import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/routes/app.router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminNavBar extends StatelessWidget {
  const AdminNavBar({
    super.key,
    this.title,
    this.route,
  });
  final title;
  final route;

  void onSelected(BuildContext ctx, int item) {}
  @override
  Widget build(BuildContext context) {
    final route = AutoRouter.of(context).current.name;
    return AppBar(
      automaticallyImplyLeading:
          route == LoginRoute.name || route == AdminDashBoardDataRoute.name
              ? false
              : true,
      elevation: 0,
      backgroundColor: blueColor,
      title: CustomText(
        text: title,
        fontSize: 17.sp,
      ),

      //leading: isAdmin == null ? const SizedBox.shrink() : Icon(Icons.menu),
      actions: [
        Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            child: IconButton(
              onPressed: () {
                routeTo("/search", context);
              },
              icon: Icon(Icons.search, size: KiconSize.h),
            ))
      ],
    );
  }
}
