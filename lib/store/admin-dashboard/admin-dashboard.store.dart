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
final pendingDonationsProvider = FutureProvider<Map<String, dynamic>>(
  (ref) {
    return ref.watch(adminDashboardService).getPendingDonations();
  },
);
final pendingRequestProvider = FutureProvider<Map<String, dynamic>>(
  (ref) {
    return ref.watch(adminDashboardService).getPendingRequest();
  },
);

class ApproveNotifier extends ChangeNotifier {
  ApproveNotifier(this.read) : super();
  final Reader read;

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

  approveDonations(userId, type) async {
    final approveVolunteerService = read(adminDashboardService);
    try {
      final resp = await approveVolunteerService.approveDonation(userId, type);

      notifyListeners();
      return resp;
    } catch (e) {
      log('$e');
      rethrow;
    }
  }

  approveRequest(userId, type) async {
    final approveVolunteerService = read(adminDashboardService);
    try {
      final resp = await approveVolunteerService.approveRequest(userId, type);

      notifyListeners();
      return resp;
    } catch (e) {
      log('$e');
      rethrow;
    }
  }
}

final approveVolunteerProvider =
    ChangeNotifierProvider<ApproveNotifier>((ref) => ApproveNotifier(ref.read));
