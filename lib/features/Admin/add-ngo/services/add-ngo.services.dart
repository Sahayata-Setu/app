import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:donationapp/utils/base-client/base_client.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class signupNGOServiceClass {
  final _client = ApiHelper.instance;

  Future<Map<String, dynamic>> signupNGO(data) async {
    // final singUpService
    try {
      final token = StorageService.getToken();
      log("this is from$data");
      final response = await _client.post(
        "/admin/ngo",
        data: data,
        options: Options(
          headers: {"Authorization": "Bearer ${token}"},
        ),
      );

      // StorageService.setToken(response['token']);
      // StorageService.setUserType(response['userRole']);
      // StorageService.setId(response['userId']);

      return response;
    } catch (e) {
      throw Exception("Invalid Request $e");
    }
  }
}

final signupNGOService = Provider.autoDispose<signupNGOServiceClass>(
    (ref) => signupNGOServiceClass());
