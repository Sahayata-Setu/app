import 'package:donationapp/features/Admin/add-preferred-locations/services/add-preferred-services.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loadingPref = StateProvider((ref) => false);

final preferredLocationDataProvider = StateProvider(
  (ref) => {
    "city": "",
    "title": "",
    "address": "",
    "landmark": "",
    "contact": "",
  },
);

//get all preferred locations
final preferredLocationProvider = FutureProvider<Map<String, dynamic>>(
  (ref) {
    return ref.watch(addPreferredService).getPreferredLocations();
  },
);
//get all single preferred locations
final preferredSingleLocationProvider =
    FutureProvider.family<Map<String, dynamic>, String>(
  (ref, id) {
    return ref.watch(addPreferredService).getSinglePreferredLocation(id);
  },
);

class AddNotifier extends ChangeNotifier {
  AddNotifier(this.read) : super();
  final Reader read;

  addPreferredLocation(data) async {
    final addPrefferedLocationSer = read(addPreferredService);
    // final id = StorageService.getId();
    // final image = read(imagesProvider);
    read(loadingPref.notifier).state = true;

    try {
      final resp = await addPrefferedLocationSer.addPreferredLocation(data);
      if (resp != null) {
        // final userDetails = StorageService.getUser();
        read(loadingPref.notifier).state = false;

        // StorageService.setUser({...?userDetails, ...data});
      }
      return resp;
    } catch (e) {
      read(loadingPref.notifier).state = false;

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

final addPreferredLoationProvider =
    ChangeNotifierProvider<AddNotifier>((ref) => AddNotifier(ref.read));
