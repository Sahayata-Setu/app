import 'dart:developer';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/features/donations_claim/store/donations_claim.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icon.dart';

class ForPending extends ConsumerWidget {
  const ForPending({super.key, this.donationId});
  final donationId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final donationClaimRef = ref.watch(donationClaimProvider);
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
            text: "Claimed",
          ),
          onTap: () async {
            ref.refresh(donationClaimRequestsProvider(""));
            final resp = await donationClaimRef.changeStatus(donationId);
            // if (resp.statusCode == 200) {
            log("This is response: $resp");
            // }
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
