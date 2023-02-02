import 'package:donationapp/services/homepage/homepage.service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'homepage.store.freezed.dart';
// part 'homepage.data.provider.g.dart';

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

//Get donations by category

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


// final agentsSearchProvider =
//     StateNotifierProvider.autoDispose<Map<String, dynamic>, String>(
//   (ref, type) {
//     return ref.watch(homePageService).getDonationsOrRequest(type);
//   },
// );
