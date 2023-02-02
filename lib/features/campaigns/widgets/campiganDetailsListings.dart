import 'dart:developer';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/Text/info-text.dart';
import 'package:donationapp/constant/common/Text/infoDetail-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class CampaignDetailsListings extends StatelessWidget {
  const CampaignDetailsListings({super.key, this.data});
  final data;

  @override
  Widget build(BuildContext context) {
    String formatTime(time) {
      String formattedTime =
          DateFormat('HH:mm:ss').format(DateTime.parse(time));
      return formattedTime;
      // log("Data: $data");
    }

    String formatDate(date) {
      String formattedTime =
          DateFormat('yyyy-MM-dd').format(DateTime.parse(date));
      return formattedTime;
      // log("Data: $data");
    }

    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(kPadding.w),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InfoText(text: "Campaign Name:"),
            InfoDetailText(text: data['title']),
            InfoText(text: "Event Location:"),
            InfoDetailText(text: data['location']),
            InfoText(text: "Time:"),
            InfoDetailText(text: "6:00 am to 9:00 pm"),
            InfoText(text: "Start day:"),
            InfoDetailText(text: "${formatDate(data['startTime'])}"),
            InfoText(text: "End day:"),
            InfoDetailText(text: "${formatDate(data['startTime'])}"),
            InfoText(text: "Description:"),
            Flexible(
              child: InfoDetailText(
                  textOverFlow: TextOverflow.visible,
                  text: "${data['description']}"),
            ),
          ],
        ),
      ),
    );
  }
}
