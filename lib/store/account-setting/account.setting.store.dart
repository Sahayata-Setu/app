import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userDetailsProvider = StateProvider(
  (ref) => ({
    "firstName": "",
    "lastName": "",
    "phone": "",
    "email": "",
    "location": "",
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
  //   final image = read(imagesProvider);
  //   try {
  //     final resp = await updateProfile.updateProfile(id, data, image);
  //     if (resp != null) {
  //       final userDetails = StorageService.getUser();
  //       StorageService.setUser({...?userDetails, ...data});
  //     }
  //     return resp;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
}

final updateProfileProvider = ChangeNotifierProvider.autoDispose<AddNotifier>(
    (ref) => AddNotifier(ref.read));

// initialize the user details on user update

final initUserDetailsForUpdate = FutureProvider.autoDispose<dynamic>(
  (ref) {
    // final userId = StorageService
    // return ref.read(singleProfileServiceProvider).getDetailsById(userId).then(
    //   (resp) {
    //     log('resp $resp');
    //     ref.read(newProfileDetailsProvider.notifier).state = {
    //       "firstName": resp.firstName,
    //       "lastName": resp.lastName,
    //       "email": resp.email,
    //       "profilePic": resp.profilePic,
    //       "brn": resp.brn,
    //       "phoneNumber": resp.phoneNumber,
    //       "website": resp.Website,
    //       "RealEstateName": resp.RealEstateName,
    //       "LicenseEndDate": resp.LicenseEndDate.toString(),
    //     };
    //     return resp;
    //   },
    // );
  },
);
