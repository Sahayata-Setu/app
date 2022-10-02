import 'package:badges/badges.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key, required this.title, required this.showBadge});
  final String title;
  final bool showBadge;
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
                        onPressed: () {},
                        icon: const Icon(Icons.search, size: KiconSize),
                      ))
                ],
              )
            : const SizedBox()
      ],
    );
  }
}
