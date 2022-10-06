import 'package:donationapp/services/homepage/homepage.service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoriesProvider = StateProvider((ref) => "");

final donationsOrRequestProvider =
    FutureProvider.family<Map<String, dynamic>, String>((ref, type) {
  return ref.watch(homePageService).getDonationsOrRequest(type);
});

final singleDonationsDataProvider =
    FutureProvider.family<Map<String, dynamic>, String>(
  (ref, id) {
    return ref.watch(homePageService).getDontaionsById(id);
  },
);
