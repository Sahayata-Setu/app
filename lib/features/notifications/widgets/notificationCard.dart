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
      required this.createdAt});
  final String title;
  final icons;
  final createdAt;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          routeTo("/donations/:id", context);
        },
        child: Column(
          children: [
            ListTile(
              title: Text(title),
              subtitle: Text(createdAt),
              leading: Icon(icons),
            ),
            const HorizontalLine(
              color: secondaryBlue,
            )
          ],
        ));
  }
}
