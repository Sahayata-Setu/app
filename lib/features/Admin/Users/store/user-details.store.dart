import 'package:donationapp/features/Admin/Users/services/user-detail.service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//Get All volunteers
final getAlluserDetailsProvider =
    FutureProvider.family<Map<String, dynamic>, String>(
  (ref, data) {
    return ref.watch(userDetailsService).getUserDetails();
  },
);
