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
final getAllDonationsProvider = FutureProvider<Map<String, dynamic>>(
  (ref) {
    return ref.watch(adminDashboardService).getAllDonations();
  },
);
final getAllRequestsProvider = FutureProvider<Map<String, dynamic>>(
  (ref) {
    return ref.watch(adminDashboardService).getAllRequests();
  },
);

//Get All volunteers
final getAllVolunteerProvider = FutureProvider<Map<String, dynamic>>(
  (ref) {
    return ref.watch(adminDashboardService).getAllVolunteers();
  },
);

//Get Single volunteer application request
final getAllSingleVolunteerApplicationProvider =
    FutureProvider.family<Map<String, dynamic>, String>(
  (ref, applicationId) {
    return ref
        .watch(adminDashboardService)
        .getSingleVolunteerApplicationRequesr(applicationId);
  },
);

// Get All Data for admin dashboard
final getAllDataProvider = FutureProvider<Map<String, dynamic>>(
  (ref) {
    return ref.watch(adminDashboardService).getAllData();
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

  approveDonations(donationId, type) async {
    final approveVolunteerService = read(adminDashboardService);
    try {
      final resp =
          await approveVolunteerService.approveDonation(donationId, type);

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
