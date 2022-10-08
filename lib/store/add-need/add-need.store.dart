import 'dart:developer';

import 'package:donationapp/services/add-donation/add.donation.service.dart';
import 'package:donationapp/services/add-need/add.need.service.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final needDetailsProvider = StateProvider(
  (ref) => ({
    "title": "",
    "category": "",
    "quantity": "",
    "pickupDetails": "",
    "description": "",
  }),
);

final datePickerNeedDetails =
    StateProvider<DateTime>((ref) => (DateTime.now()));

final idImageNeedProvider = StateProvider((ref) => ([]));

class NeedNotifier extends ChangeNotifier {
  NeedNotifier(this.read) : super();
  final Reader read;

  // @override
  createNeed(data, image, date) async {
    final donationSer = read(needService);
    try {
      final resp = await donationSer.createNeed(data, image, date);
      log("this si from resp ${resp}");
      notifyListeners();
      return resp;
    } catch (e) {
      log('$e');
      rethrow;
    }
  }
}

final needProvider = ChangeNotifierProvider.autoDispose<NeedNotifier>(
    (ref) => NeedNotifier(ref.read));
