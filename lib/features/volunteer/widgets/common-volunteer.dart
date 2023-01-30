import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/volunteer/widgets/volunteer-drawer.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonVolunteer extends StatelessWidget {
  const CommonVolunteer({super.key, this.component});
  final component;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Volunteer"),
        backgroundColor: blueColor,
        actions: [
          // GestureDetector(
          //   onTap: () {
          //     // handleLogout();
          //   },
          //   child: Container(
          //     height: 10.h,
          //     width: 50.w,
          //     child: CustomText(text: "Logout"),
          //   ),
          // ),
          Padding(
            padding: EdgeInsets.all(kPadding1),
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
      ),
      body: Container(
        child: Column(
          children: [component],
        ),
      ),
      drawer: VolunteerDrawer(),
    );
  }
}
