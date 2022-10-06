import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/Text/info-text.dart';
import 'package:donationapp/constant/common/Text/infoDetail-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CampaignDetailsListings extends StatelessWidget {
  const CampaignDetailsListings({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(kPadding.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            InfoText(text: "Campaign Name:"),
            InfoDetailText(text: "Rajkot XYZ Donation group"),
            InfoText(text: "Event Location:"),
            InfoDetailText(text: "Marwadi University"),
            InfoText(text: "Time:"),
            InfoDetailText(text: "6:00 am to 9:00 pm"),
            InfoText(text: "Start day:"),
            InfoDetailText(text: "10-09-2022"),
            InfoText(text: "End day:"),
            InfoDetailText(text: "11-09-2022"),
            InfoText(text: "Description:"),
            Flexible(
              child: InfoDetailText(
                  textOverFlow: TextOverflow.visible,
                  text:
                      "The purpose of lorem ipsum is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn't distract from the layout. A practice not without controversy, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content."),
            ),
          ],
        ),
      ),
    );
  }
}
