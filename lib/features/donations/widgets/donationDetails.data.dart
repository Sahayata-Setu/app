import 'dart:developer';

import 'package:donationapp/constant/common/horizontal-line/horizontal-line.dart';
import 'package:donationapp/constant/common/loading/loadingPage.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/donations/widgets/donationDetails.dart';
import 'package:donationapp/store/homepage/homepage.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:auto_route/annotations.dart';

class DonationDetailData extends ConsumerWidget {
  const DonationDetailData({super.key, @PathParam('id') this.id});
  final id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // log("this is id$id}");
    final data = ref.watch(singleDonationsDataProvider(id));

    return Scaffold(
      body: Container(
        color: backgroundColor,
        child: data.when(
            data: (data) {
              // log("ffg");
              return DonationDetail(
                data: data,
              );
            },
            error: (h, e) {
              // log('$h');
              // log('$e');
              return Text("Error occures!");
            },
            loading: () => const LoadingPage()),
      ),
    );
  }
}
