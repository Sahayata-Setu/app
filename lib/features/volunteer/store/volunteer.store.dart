import 'package:donationapp/features/volunteer/services/volunteer.services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final allVolunteerByUserIdProvider =
    FutureProvider.family<Map<String, dynamic>, String>(
  (ref, userId) {
    return ref.watch(volunteerApiService).getVolunteersPostByUserId(userId);
  },
);
