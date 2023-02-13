import 'package:donationapp/services/apply-for-volunteer/apply-for-volunteer.service.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final volunteerDetailsProvider = StateProvider(
  (ref) => ({
    "reason": "",
    // "address": "",
    // "gender": "",
    // "language": "",
    // "password": "",
  }),
);

final idImageProvider = StateProvider((ref) => ([]));

final loadingVolunteer = StateProvider((ref) => false);

class VolunteerNotifier extends ChangeNotifier {
  VolunteerNotifier(this.read) : super();
  final Reader read;

  applyVolunter(Map<String, dynamic> data, image) async {
    final applyVolunteer = read(volunteerService);
    // final id = StorageService.getUser();
    final image = read(idImageProvider);
    read(loadingVolunteer.notifier).state = true;
    try {
      final resp = await applyVolunteer.applyForVolunteer(data, image);
      if (resp != null) {
        read(loadingVolunteer.notifier).state = false;
        // final userDetails = StorageService.getUser();
        // StorageService.setUser({...?userDetails, ...data});
      }
      return resp;
    } catch (e) {
      read(loadingVolunteer.notifier).state = false;
      rethrow;
    }
  }
}

final volunteerProvider = ChangeNotifierProvider.autoDispose<VolunteerNotifier>(
    (ref) => VolunteerNotifier(ref.read));

// initialize the user details on user update

// final initUserDetailsForUpdate = FutureProvider.autoDispose<dynamic>(
//   (ref) {
//     final userId = StorageService.getId();
//     return ref.read(singleProfileServiceProvider).getDetailsById(userId).then(
//       (resp) {
//         log('resp $resp');
//         ref.read(newProfileDetailsProvider.notifier).state = {
//           "firstName": resp.firstName,
//           "lastName": resp.lastName,
//           "email": resp.email,
//           "profilePic": resp.profilePic,
//           "brn": resp.brn,
//           "phoneNumber": resp.phoneNumber,
//           "website": resp.Website,
//           "RealEstateName": resp.RealEstateName,
//           "LicenseEndDate": resp.LicenseEndDate.toString(),
//         };
//         return resp;
//       },
//     );
//   },
// );
