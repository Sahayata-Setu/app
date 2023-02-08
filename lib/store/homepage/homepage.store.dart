import 'dart:developer';

import 'package:donationapp/services/homepage/homepage.service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'homepage.store.freezed.dart';

final categoriesProvider = StateProvider((ref) => true);

//get all donations
final donationsOrRequestProvider =
    FutureProvider.family<Map<String, dynamic>, String>(
  (ref, type) {
    return ref.watch(homePageService).getDonationsOrRequest(type);
  },
);

//get all neeeds
final getAllNeedsProvider = FutureProvider.family<Map<String, dynamic>, String>(
  (ref, type) {
    return ref.watch(homePageService).getAllRequests();
  },
);

//get single donations
final singleDonationsDataProvider =
    FutureProvider.family<Map<String, dynamic>, String>(
  (ref, id) {
    return ref.watch(homePageService).getDontaionsById(id);
  },
);

//Get need by id
final singleNeedDataProvider =
    FutureProvider.family<Map<String, dynamic>, String>(
  (ref, id) {
    return ref.watch(homePageService).getRequestById(id);
  },
);

//Get donations by category
final donationsByCategoryProvider =
    FutureProvider.family<Map<String, dynamic>, String>(
  (ref, category) {
    return ref.watch(homePageService).getDonationsByCategory(category);
  },
);

//Get Campaigns By ID
final singleCampaignsByIdProvider =
    FutureProvider.family<Map<String, dynamic>, String>(
  (ref, id) {
    return ref.watch(homePageService).getSingleCampaignsById(id);
  },
);

@freezed
abstract class MyParameter with _$MyParameter {
  factory MyParameter({
    required String type,
    required String category,
  }) = _MyParameter;
}

final needsByCategoryProvider =
    FutureProvider.family<Map<String, dynamic>, MyParameter>(
  (ref, myparameter) {
    return ref
        .watch(homePageService)
        .getNeedsByCategory(myparameter.type, myparameter.category);
  },
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

  //Update profile info
  createDonationRequest(data) async {
    // log("this is of data ${data}");
    final homepageService = read(homePageService);
    // read(loading.notifier).state = true;

    try {
      final resp = await homepageService.createRequestForDonation(data);
      if (resp != null) {
        // read(loading.notifier).state = false;
      }
      notifyListeners();
      return resp;
    } catch (e) {
      // read(loading.notifier).state = false;
      log('$e');
      rethrow;
    }
  }
}

final homepageProvider =
    ChangeNotifierProvider<AddNotifier>((ref) => AddNotifier(ref.read));

// final agentsSearchProvider =
//     StateNotifierProvider.autoDispose<Map<String, dynamic>, String>(
//   (ref, type) {
//     return ref.watch(homePageService).getDonationsOrRequest(type);
//   },
// );
