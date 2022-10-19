import 'package:donationapp/services/homepage/homepage.service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoriesProvider = StateProvider((ref) => true);

//get all donations
final donationsOrRequestProvider =
    FutureProvider.family<Map<String, dynamic>, String>(
  (ref, type) {
    return ref.watch(homePageService).getDonationsOrRequest(type);
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


// final agentsSearchProvider =
//     StateNotifierProvider.autoDispose<Map<String, dynamic>, String>(
//   (ref, type) {
//     return ref.watch(homePageService).getDonationsOrRequest(type);
//   },
// );
