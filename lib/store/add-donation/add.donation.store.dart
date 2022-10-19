import 'dart:developer';

import 'package:donationapp/services/add-donation/add.donation.service.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final donationDetailsProvider = StateProvider(
  (ref) => ({
    "title": "",
    "category": "",
    "quantity": "",
    "pickupDetails": "",
    "description": "",
  }),
);

final donationCategoryProvider = StateProvider((ref) => "");

final datePickerDetails = StateProvider<DateTime>((ref) => (DateTime.now()));

final idImageDonationProvider = StateProvider((ref) => ([]));

class DonationNotifier extends ChangeNotifier {
  DonationNotifier(this.read) : super();
  final Reader read;

  // @override
  createDonation(data, image, date) async {
    final donationSer = read(donationService);
    try {
      final resp = await donationSer.createDonation(data, image, date);
      log("this si from resp ${resp}");
      notifyListeners();
      return resp;
    } catch (e) {
      log('$e');
      rethrow;
    }
  }
}

final donationProvider = ChangeNotifierProvider.autoDispose<DonationNotifier>(
    (ref) => DonationNotifier(ref.read));
