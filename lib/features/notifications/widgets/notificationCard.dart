import 'package:donationapp/constant/common/horizontal-line/horizontal-line.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NoticationItem extends StatelessWidget {
  const NoticationItem(
      {super.key,
      required this.title,
      required this.icons,
      required this.createdAt,
      this.subTitle});
  final String title;
  final icons;
  final createdAt;
  final subTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          // print("hit");
          // routeTo("/admin-dashboard", context); // route to target
          //  routeTo("/donations/:id", context);
        },
        child: Column(
          children: [
            ListTile(
              trailing: Text(createdAt),
              title: Text(title),
              subtitle: Text(subTitle),
              leading: Icon(icons),
            ),
            const HorizontalLine(
              color: secondaryBlue,
            )
          ],
        ));
  }
}
