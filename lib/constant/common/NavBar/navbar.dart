import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/routes/app.router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key, this.title, this.route, required this.showBadge});
  final title;
  final route;

  final bool showBadge;
  @override
  Widget build(BuildContext context) {
    final route = AutoRouter.of(context).current.name;
    return AppBar(
      automaticallyImplyLeading:
          route == LoginRoute.name || route == AdminDashboardRoute.name
              ? false
              : true,
      elevation: 0,
      backgroundColor: blueColor,
      title: CustomText(
        text: title,
        fontSize: 18.sp,
      ),
      actions: [
        showBadge
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Badge(
                    badgeColor: Colors.orange,
                    badgeContent: const Text(
                      '9',
                      style: TextStyle(color: Colors.white),
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(top: 6),
                      child: const Icon(Icons.star),
                    ),
                    // showBadge: showBadge ? true : false,
                  ),
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: IconButton(
                        onPressed: () {
                          routeTo("/search", context);
                        },
                        icon: const Icon(Icons.search, size: KiconSize),
                      ))
                ],
              )
            : const SizedBox()
      ],
    );
  }
}
