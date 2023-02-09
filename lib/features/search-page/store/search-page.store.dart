//get single donations
import 'package:donationapp/features/search-page/services/search-page.services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchProvider = FutureProvider.family<Map<String, dynamic>, String>(
  (ref, data) {
    return ref.watch(searchPageService).search(data);
  },
);

final seachControllerProvider =
    StateProvider.autoDispose((ref) => TextEditingController());
