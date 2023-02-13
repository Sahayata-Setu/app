import 'dart:developer';

import 'package:donationapp/constant/common/error/error.dart';
import 'package:donationapp/constant/common/loading/loadingPage.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/Admin/Dashboard/adminDashboard.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/users/donationsTab.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/users/requestTab.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/users/userTab.dart';
import 'package:donationapp/features/homepage/homepage.dart';
import 'package:donationapp/store/admin-dashboard/admin-dashboard.store.dart';
import 'package:donationapp/store/homepage/homepage.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PendingRequestData extends ConsumerWidget {
  const PendingRequestData({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(pendingRequestProvider);

    return Container(
      color: backgroundColor,
      child: data.when(
        data: (data) {
          // log("ffg");
          return RequestTab(
            data: data,
          );
        },
        error: (h, e) {
          log('$h');
          log('$e');
          return ErrorPage();
        },
        loading: () => const Center(
          child: LoadingPage(),
        ),
      ),
    );
  }
}
