import 'dart:convert';
import 'dart:developer';

import 'package:donationapp/helpers/convertToJsonObject.dart';
import 'package:donationapp/services/signup/signup.service.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final signUpDetailsProvider = StateProvider(
  (ref) => ({
    "firstName": "",
    "lastName": "",
    "email": "",
    "phoneNo": "",
    "address": "",
    "gender": "",
    "language": "",
    "password": "",
    "city": "",
  }),
);

class SignUpNotifier extends ChangeNotifier {
  SignUpNotifier(this.read) : super();
  final Reader read;

  // @override
  signup(data) async {
    final authService = read(signUpService);
    try {
      final resp = await authService.signUp(data);

      notifyListeners();
      return resp;
    } catch (e) {
      log('$e');
      rethrow;
    }
  }
}

final signUpProvider = ChangeNotifierProvider.autoDispose<SignUpNotifier>(
    (ref) => SignUpNotifier(ref.read));
