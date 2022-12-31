import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icon.dart';

class ForPending extends StatelessWidget {
  const ForPending({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) => [
        PopupMenuItem(
          child: CustomText(
            text: "Edit",
          ),
          onTap: () {},
        ),
        PopupMenuItem(
          child: CustomText(
            text: "Claimed",
          ),
          onTap: () {},
        ),
        PopupMenuItem(
          child: CustomText(
            text: "Delete",
          ),
          onTap: () {},
        ),
      ],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: LineIcon.verticalEllipsis(),
    );
  }
}
