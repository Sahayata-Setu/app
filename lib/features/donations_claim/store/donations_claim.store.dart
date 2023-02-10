import 'dart:developer';

import 'package:donationapp/features/donations_claim/services/donations_claims.dervices.dart';
import 'package:donationapp/services/account-settings/account-settings.services.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//get single donations
final donationClaimRequestsProvider =
    FutureProvider.family<Map<String, dynamic>, String>(
  (ref, id) {
    return ref.watch(donationsClaimService).getDonationClaimRequests();
  },
);

final selectedCategoryProvider = StateProvider((ref) => "donation");

class AddNotifier extends ChangeNotifier {
  AddNotifier(this.read) : super();
  final Reader read;

  changeStatus(String donationId) async {
    final donationSer = read(donationsClaimService);
    // final id = StorageService.getId();
    // final image = read(imagesProvider);
    try {
      final resp = await donationSer.changeRequest(donationId);
      // if (resp != null) {
      //   // final userDetails = StorageService.getUser();
      //   // StorageService.setUser({...?userDetails, ...data});
      // }
      return resp;
    } catch (e) {
      rethrow;
    }
  }

  changeStatusOfPost() async {
    final donationSer = read(donationsClaimService);
    // final id = StorageService.getId();
    // final image = read(imagesProvider);
    try {
      final resp = await donationSer.changeStatusOfPost();
      // if (resp != null) {
      //   // final userDetails = StorageService.getUser();
      //   // StorageService.setUser({...?userDetails, ...data});
      // }
      return resp;
    } catch (e) {
      rethrow;
    }
  }

  increasePointOfCertificate(userId) async {
    final donationSer = read(donationsClaimService);
    // final id = StorageService.getId();
    // final image = read(imagesProvider);
    try {
      final resp = await donationSer.increasePoint(userId);
      // if (resp != null) {
      //   // final userDetails = StorageService.getUser();
      //   // StorageService.setUser({...?userDetails, ...data});
      // }
      return resp;
    } catch (e) {
      rethrow;
    }
  }

  //Update profile info
  // createDonationRequest() async {
  //   // log("this is of data ${data}");
  //   final donationClaimService = read(donationsClaimService);
  //   // read(loading.notifier).state = true;

  //   try {
  //     final resp = await donationClaimService.getDonationClaimRequests(data);
  //     if (resp != null) {
  //       // read(loading.notifier).state = false;
  //     }
  //     notifyListeners();
  //     return resp;
  //   } catch (e) {
  //     // read(loading.notifier).state = false;
  //     log('$e');
  //     rethrow;
  //   }
  // }
}

final donationClaimProvider =
    ChangeNotifierProvider<AddNotifier>((ref) => AddNotifier(ref.read));
