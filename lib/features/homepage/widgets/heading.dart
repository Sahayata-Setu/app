import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Heading extends StatelessWidget {
  const Heading({super.key, required this.header, this.color});
  final header;
  final color;
  @override
  Widget build(BuildContext context) {
    return Text(header.toString(),
        style: TextStyle(
          fontSize: 18.sp,
          color: color,
          //color: Colors.transparent,
          // shadows: [Shadow(color: Colors.black, offset: Offset(0, -5))],
          fontWeight: FontWeight.w500,
          // decoration: TextDecoration.underline,
          // decorationColor: blueColor,
          // decorationThickness: 4,
          // decorationStyle: TextDecorationStyle.solid
        ));
  }
}
