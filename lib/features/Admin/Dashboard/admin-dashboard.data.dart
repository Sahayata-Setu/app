import 'dart:developer';

import 'package:donationapp/constant/common/error/error.dart';
import 'package:donationapp/features/Admin/Dashboard/adminDashboard.dart';
import 'package:donationapp/features/homepage/homepage.dart';
import 'package:donationapp/store/admin-dashboard/admin-dashboard.store.dart';
import 'package:donationapp/store/homepage/homepage.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AdminDashBoardData extends ConsumerWidget {
  const AdminDashBoardData({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(dashboardDataProvider);

    return Container(
      color: Colors.black,
      child: data.when(
        data: (data) {
          // log("ffg");
          return AdminDashboard(
            data: data,
          );
        },
        error: (h, e) {
          log('$h');
          log('$e');
          return ErrorPage();
        },
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
