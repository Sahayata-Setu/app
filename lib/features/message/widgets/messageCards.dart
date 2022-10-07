import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/horizontal-line/horizontal-line.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageCards extends StatelessWidget {
  const MessageCards(
      {super.key,
      required this.title,
      required this.icons,
      required this.createdAt,
      required this.message});
  final String title;
  final icons;
  final createdAt;
  final message;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          routeTo("/messages/:sender", context);
        },
        child: Column(
          children: [
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title),
                  CustomText(
                    text: createdAt,
                    fontSize: 12.sp,
                  )
                ],
              ),
              subtitle: Text(message, overflow: TextOverflow.ellipsis),
              leading: Icon(
                icons,
                color: blueColor,
              ),
            ),
            const HorizontalLine(
              color: secondaryBlue,
            )
          ],
        ));
  }
}
