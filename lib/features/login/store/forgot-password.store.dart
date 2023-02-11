import 'dart:developer';

import 'package:donationapp/features/login/services/forgot-password.services.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loadingForgotPass = StateProvider((ref) => false);

final emailProvider = StateProvider((ref) => {"email": ""});

class AddNotifier extends ChangeNotifier {
  AddNotifier(this.read) : super();
  final Reader read;

  //Update profile info
  forgotPassword(email) async {
    // log("this is of data ${data}");
    final forgotPassService = read(forgotPasswordService);
    read(loadingForgotPass.notifier).state = true;

    try {
      final resp = await forgotPassService.resetPassword(email);
      if (resp != null) {
        read(loadingForgotPass.notifier).state = false;
      }
      notifyListeners();
      return resp;
    } catch (e) {
      read(loadingForgotPass.notifier).state = false;

      log('$e');
      rethrow;
    }
  }
}

final forgotPassProvider =
    ChangeNotifierProvider<AddNotifier>((ref) => AddNotifier(ref.read));
