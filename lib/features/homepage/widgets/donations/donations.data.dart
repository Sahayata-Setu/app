import 'dart:developer';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/loading/loadingPage.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/domain/donations/donations.model.dart';
import 'package:donationapp/features/homepage/homepage.dart';
import 'package:donationapp/features/homepage/widgets/donations/donations.dart';
import 'package:donationapp/store/homepage/homepage.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DonationsData extends ConsumerWidget {
  const DonationsData({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(donationsOrRequestProvider("donations"));

    return Container(
      color: backgroundColor,
      child: data.when(
        data: (data) {
          // log("ffg");
          return DonationsHome(data);
        },
        error: (h, e) {
          log('$h');
          log('$e');
          return Padding(
            padding: EdgeInsets.all(kPadding1.w),
            child: CustomText(text: "Error occured, Please try later"),
          );
        },
        loading: () => LoadingPage(),
      ),
    );
  }
}
