import 'package:donationapp/domain/user/user.model.dart';
import 'package:donationapp/services/homepage/homepage.service.dart';
import 'package:donationapp/services/single-user/single-user.service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// final categoriesProvider = StateProvider((ref) => "");

final singleUserDataProvider =
    FutureProvider.family<Map<String, dynamic>, String>(
  (ref, id) {
    return ref.watch(singleUserService).getSingleUser(id);
  },
);
