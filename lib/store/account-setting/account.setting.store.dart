import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userDetailsProvider = StateProvider(
  (ref) => ({
    "name": "",
    "phone": "",
    "email": "",
    "location": "",
    // "address": "",
    // "gender": "",
    // "language": "",
    // "password": "",
  }),
);
final passwordDetailsProvider = StateProvider(
  (ref) => ({
    "token": "",
    "password": "",
  }),
);

final locationDetailsProvider = StateProvider(
  (ref) => ({
    "location": "",
  }),
);

// final idImageProvider = StateProvider((ref) => (""));
