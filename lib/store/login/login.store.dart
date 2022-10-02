import 'dart:convert';
import 'dart:developer';

import 'package:donationapp/helpers/convertToJsonObject.dart';
import 'package:donationapp/services/login/login.service.dart';
import 'package:donationapp/services/signup/signup.service.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginDetailsProvider = StateProvider(
  (ref) => ({
    "email": "",
    "password": "",
  }),
);

class SignUpNotifier extends ChangeNotifier {
  SignUpNotifier(this.read) : super();
  final Reader read;

  // @override
  signup(data) async {
    // log("${data}");
    final authService = read(loginService);
    try {
      final resp = await authService.login(data);

      notifyListeners();
      return resp;
    } catch (e) {
      log('$e');
      rethrow;
    }
  }

  logout() async {
    final authService = read(loginService);
    try {
      await authService.logOut();
      notifyListeners();
      return true;
    } catch (e) {
      log('$e');
      rethrow;
    }
  }
}

final loginProvider = ChangeNotifierProvider.autoDispose<SignUpNotifier>(
    (ref) => SignUpNotifier(ref.read));
