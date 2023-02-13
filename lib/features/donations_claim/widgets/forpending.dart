import 'dart:developer';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/features/donations_claim/store/donations_claim.store.dart';
import 'package:donationapp/store/homepage/homepage.store.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icon.dart';

class ForPending extends ConsumerWidget {
  const ForPending({
    super.key,
    this.donationId,
    this.userType,
    this.needId,
  });
  final donationId;
  final userType;
  final needId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final donationClaimRef = ref.watch(donationClaimProvider);
    final selected = ref.watch(selectedCategoryProvider);
    final userId = StorageService.getId();
    // final changePostStatus = ref.watch(donationClaimRequestsProvider(""));
    log("Need Id: $needId");
    return PopupMenuButton(
      itemBuilder: (context) => [
        // PopupMenuItem(
        //   child: CustomText(
        //     text: "Edit",
        //   ),
        //   onTap: () {},
        // ),
        PopupMenuItem(
          child: CustomText(
            text: userType == "donor" ? "Donated" : "Received",
          ),
          onTap: () async {
            final resp = selected == "donation"
                ? await donationClaimRef.changeStatus(donationId)
                : await donationClaimRef.changeNeedStatus(needId);
            // log("Resp: ${resp.statusCode}");
            if (resp.isNotEmpty) {
              ref.refresh(neesClaimRequestsProvider(""));
              ref.refresh(donationClaimRequestsProvider(""));
              ref.refresh(donationsOrRequestProvider("donations"));
              await donationClaimRef.changeStatusOfPost().then((val) async {
                await donationClaimRef.increasePointOfCertificate(userId);
                log('Hello-------------------------------');
              }).catchError((err) {
                log('Error');
              });
              // log("This is response: $resp");
            }
            // donatiponClaimProvider
          },
        ),
        // PopupMenuItem(
        //   child: CustomText(
        //     text: "Delete",
        //   ),
        //   onTap: () {},
        // ),
      ],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: LineIcon.verticalEllipsis(),
    );
  }
}
