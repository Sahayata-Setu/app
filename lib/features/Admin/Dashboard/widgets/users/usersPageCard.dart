import 'package:donationapp/constant/common/horizontal-line/horizontal-line.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserPageCard extends StatelessWidget {
  const UserPageCard(
      {super.key, required this.name, required this.icons, required this.city});
  final String name;
  final icons;
  final city;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          print("hit");
          routeTo("/certificatePreview", context); // route to target
          //  routeTo("/donations/:id", context);
        },
        child: Column(
          children: [
            ListTile(
              title: Text(name),
              subtitle: Text(city),
              leading: Icon(icons),
            ),
            const HorizontalLine(
              color: secondaryBlue,
            )
          ],
        ));
  }
}
