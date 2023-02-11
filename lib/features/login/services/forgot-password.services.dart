// approval/get-all-requests
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:donationapp/utils/base-client/base_client.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ForgotPasswordServiceClass {
  final _client = ApiHelper.instance;

  //Get all donations or requests
  Future<Map<String, dynamic>> resetPassword(email) async {
    try {
      final token = StorageService.getToken();
      final response = await _client.post(
        "/auth/forgot-password",
        data: email,
        options: Options(
          headers: {"Authorization": "Bearer ${token}"},
        ),
      );

      return response;
    } catch (e) {
      log("this is error$e");
      throw Exception("Invalid Request $e");
    }
  }
}

final forgotPasswordService =
    Provider<ForgotPasswordServiceClass>((ref) => ForgotPasswordServiceClass());
