import 'package:auto_route/auto_route.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/routes/app.router.gr.dart';
import 'package:donationapp/store/login/login.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VolunteerAppbar extends StatelessWidget {
  const VolunteerAppbar({super.key, this.title});
  final title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Volunteer"),
      backgroundColor: blueColor,
      actions: [
        Padding(
          padding: const EdgeInsets.all(kPadding1),
          child: PopupMenuButton(
            color: backgroundColor,
            child: const Icon(
              Icons.add,
              size: KiconSize,
            ),
            // onSelected: (item)=>onSelected(context,item),
            itemBuilder: (context) => [
              //check for isVolunteer?SizedBox():
              PopupMenuItem<int>(
                child: const Text("Create Campaign"),
                onTap: () {
                  routeTo("/createCampaign", context);
                  // go to create request button
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
