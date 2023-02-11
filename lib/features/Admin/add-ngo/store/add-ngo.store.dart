import 'dart:convert';
import 'dart:developer';

import 'package:donationapp/features/Admin/add-ngo/services/add-ngo.services.dart';
import 'package:donationapp/helpers/convertToJsonObject.dart';
import 'package:donationapp/services/signup/signup.service.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final signupNgoDetailsProvider = StateProvider(
  (ref) => ({
    "name": "",
    "email": "",
    "phoneNo": "",
    "address": "",
    "language": "",
    "password": "",
    "city": "",
  }),
);

class signupNgoNotifier extends ChangeNotifier {
  signupNgoNotifier(this.read) : super();
  final Reader read;

  // @override
  signup(data) async {
    final authService = read(signupNGOService);
    try {
      final resp = await authService.signupNGO(data);

      notifyListeners();
      return resp;
    } catch (e) {
      log('$e');
      rethrow;
    }
  }
}

final signupNgoProvider = ChangeNotifierProvider.autoDispose<signupNgoNotifier>(
    (ref) => signupNgoNotifier(ref.read));
