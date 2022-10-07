import 'dart:developer';

import 'package:donationapp/services/account-settings/account-settings.services.dart';
import 'package:donationapp/services/single-user/single-user.service.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userDetailsProvider = StateProvider(
  (ref) => ({
    // "address": "",
    // "gender": "",
    // "language": "",
    // "password": "",
  }),
);
final passwordDetailsProvider = StateProvider(
  (ref) => ({
    "token": "",
    "password": "",
  }),
);

final locationDetailsProvider = StateProvider(
  (ref) => ({
    "location": "",
  }),
);

class AddNotifier extends ChangeNotifier {
  AddNotifier(this.read) : super();
  final Reader read;

  // updateProfile(Map<String, dynamic> data) async {
  //   final updateProfile = read(updateProfileService);
  //   final id = StorageService.getId();
  //   // final image = read(imagesProvider);
  //   try {
  //     final resp = await updateProfile.updateProfile(id, data);
  //     // if (resp != null) {
  //     //   // final userDetails = StorageService.getUser();
  //     //   // StorageService.setUser({...?userDetails, ...data});
  //     // }
  //     return resp;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
  updateProfile(id, data) async {
    // log("${data}");
    final updateService = read(updateProfileService);
    // read(stateProvider.notifier).state = true;

    try {
      final resp = await updateService.updateProfile(id, data);
      // if (resp != null) {
      // read(stateProvider.notifier).state = false;
      // }
      notifyListeners();
      return resp;
    } catch (e) {
      // read(stateProvider.notifier).state = false;
      log('$e');
      rethrow;
    }
  }
}

final updateDetailsProfileProvider =
    ChangeNotifierProvider.autoDispose<AddNotifier>(
        (ref) => AddNotifier(ref.read));

// initialize the user details on user update

final initUserDetailsForUpdate = FutureProvider.autoDispose<dynamic>(
  (ref) {
    final userId = StorageService.getId();
    return ref.read(singleUserService).getSingleUser(userId).then(
      (resp) {
        log('resp ${resp['body']}');
        ref.read(userDetailsProvider.notifier).state = {
          "firstName": resp['body']['firstName'],
          "lastName": resp['body']['lastName'],
          "email": resp['body']['email'],
          // // "profilePic": resp.profilePic,
          // // "brn": resp.brn,
          "phoneNo": resp['body']['phoneNo'],
          // "name": "name"
          // "website": resp.Website,
          // "RealEstateName": resp.RealEstateName,
          // "LicenseEndDate": resp.LicenseEndDate.toString(),
        };
        return resp;
      },
    );
  },
);
