import 'dart:developer';

import 'package:donationapp/constant/common/Icon/custom-icon.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/button/cusotm-button.dart';
import 'package:donationapp/constant/common/horizontal-line/horizontal-line.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/store/admin-dashboard/admin-dashboard.store.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserList extends ConsumerWidget {
  const UserList(
      {super.key,
      required this.title,
      this.createdAt,
      this.id,
      required this.city,
      required this.icons});
  final title;
  final createdAt;
  final city;
  final icons;
  final id;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final approveProv = ref.watch(approveVolunteerProvider);
    final userId = StorageService.getId();
    handleApprove() {
      try {
        final resp = approveProv.approveVolunteer(id, "approve");
        ref.refresh(pendingVolunteerProvider);
        const snackBar = SnackBar(
          content: Text('Sucessfully Approved.'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        log(resp);
      } catch (e) {
        log("this is error from resp ${e}");
      }
    }

    handleReject() {
      try {
        final resp = approveProv.approveVolunteer(id, "reject");
        ref.refresh(pendingVolunteerProvider);
        const snackBar = SnackBar(
          content: Text('Request sucessfully rejected'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        // log(resp);
      } catch (e) {
        log("this is error from resp ${e}");
      }
    }

    return GestureDetector(
      onTap: () {
        routeTo("/approveVolunter", context);
      },
      child: Container(
        //padding: EdgeInsets.all(10),
        height: 60.h,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kPadding), color: blueColor),
        child: ListTile(
          title: CustomText(
            text: title,
            fontColor: whiteColor,
            fontWeight: FontWeight.w800,
          ),
          subtitle: CustomText(
            text: city,
            fontColor: whiteColor,
          ),
          leading: CustomIcon(
            icon: icons,
            color: whiteColor,
            size: 30.sp,
          ),
          trailing: Column(
            children: [
              Container(
                height: 20.h,
                child: CustomElevatedButton(
                  fn: () {
                    handleApprove();
                  },
                  child: CustomText(text: "Approve"),
                  // style: ButtonStyle(backgroundColor: Mater,),
                  // onPressed: () {},
                  // child: CustomText(text: "Reject"),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                height: 20.h,
                child: CustomElevatedButton(
                  fn: () {
                    handleReject();
                  },

                  child: CustomText(text: "Reject"),
                  // style: ButtonStyle(backgroundColor: Mater,),
                  // onPressed: () {},
                  // child: CustomText(text: "Reject"),
                ),
              ),
            ],
          ),
          // trailing: CustomText(
          //   text: createdAt,
          //   // fontColor: whiteColor,
          // ),
        ),
      ),
    );
  }
}


// Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//                 Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(right: 5.0),
//                       child: CustomIcon(
//                         icon: icons,
//                         color: whiteColor,
//                       ),
//                     ),
//                     CustomText(
//                       text: title,
//                       fontColor: whiteColor,
//                       fontWeight: FontWeight.w800,
//                     ),
//                   ],
//                 ),
//                 CustomText(
//                   text: createdAt,
//                 )
//               ]),
//               CustomText(
//                 text: city,
//               )
//             ],
//           )