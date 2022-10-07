import 'package:flutter_riverpod/flutter_riverpod.dart';

final donationDetailsProvider = StateProvider(
  (ref) => ({
    "title": "",
    "category": "",
    "quantity": "",
    "pickUpLocation": "",
    "prefTime": "",
    "pickupDay": "",
    "description": "",
  }),
);

final datePickerDetails = StateProvider<DateTime>((ref) => (DateTime.now()));
