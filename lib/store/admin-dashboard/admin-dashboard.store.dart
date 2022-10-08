import 'dart:developer';

import 'package:donationapp/domain/user/user.model.dart';
import 'package:donationapp/services/admin-dashboard/admin-dashboard.service.dart';
import 'package:donationapp/services/homepage/homepage.service.dart';
import 'package:donationapp/services/single-user/single-user.service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// final categoriesProvider = StateProvider((ref) => "");

final dashboardDataProvider = FutureProvider<Map<String, dynamic>>(
  (ref) {
    return ref.watch(adminDashboardService).getDashboardDetails();
  },
);
final pendingVolunteerProvider = FutureProvider<Map<String, dynamic>>(
  (ref) {
    return ref.watch(adminDashboardService).getPendingVolunteers();
  },
);

class ApproveNotifier extends ChangeNotifier {
  ApproveNotifier(this.read) : super();
  final Reader read;

  // @override
  approveVolunteer(userId, type) async {
    final approveVolunteerService = read(adminDashboardService);
    try {
      final resp = await approveVolunteerService.approveVolunteer(userId, type);

      notifyListeners();
      return resp;
    } catch (e) {
      log('$e');
      rethrow;
    }
  }
}

final approveVolunteerProvider =
    ChangeNotifierProvider.autoDispose<ApproveNotifier>(
        (ref) => ApproveNotifier(ref.read));
