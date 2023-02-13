//get single donations
import 'package:donationapp/features/certifications/services/certeficate.services.dart';
import 'package:donationapp/features/profile/services/profile-page.services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pointsProvider = FutureProvider.family<Map<String, dynamic>, String>(
  (ref, data) {
    return ref.watch(pointPageService).points(data);
  },
);

final pointsControllerProvider =
    StateProvider.autoDispose((ref) => TextEditingController());
