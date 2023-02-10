//get single donations
import 'package:donationapp/features/profile/services/profile-page.services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final profileProvider = FutureProvider.family<Map<String, dynamic>, String>(
  (ref, data) {
    return ref.watch(profilePageService).myDonations(data);
  },
);

final profileControllerProvider =
    StateProvider.autoDispose((ref) => TextEditingController());
