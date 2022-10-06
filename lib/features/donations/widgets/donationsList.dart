import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/donations/widgets/dontaionCard.dart';
import 'package:donationapp/features/homepage/widgets/heading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DonationLists extends StatelessWidget {
  const DonationLists({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().screenHeight + kPadding,
      child: Column(children: [
        Heading(header: "FOODS"),
        Expanded(
          child: ListView.builder(
            itemBuilder: ((context, index) => DonationCard()),
            itemCount: 2,
          ),
        ),
      ]),
    );
  }
}
