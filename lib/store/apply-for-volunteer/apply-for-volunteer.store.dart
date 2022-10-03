import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final volunteerDetailsProvider = StateProvider(
  (ref) => ({
    "name": "",
    "contactNo": "",
    "email": "",
    "reason": "",
    // "address": "",
    // "gender": "",
    // "language": "",
    // "password": "",
  }),
);

final idImageProvider = StateProvider((ref) => (""));
