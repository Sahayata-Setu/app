//get single donations
import 'package:donationapp/features/Leaderboard/services/leaderboard.services.dart';
import 'package:donationapp/features/search-page/services/search-page.services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final leaderboardProvider = FutureProvider<Map<String, dynamic>>(
  (ref) {
    return ref.watch(leaderboardPageService).leaderboard();
  },
);

// final leaderboardControllerProvider =
//     StateProvider.autoDispose((ref) => TextEditingController());
