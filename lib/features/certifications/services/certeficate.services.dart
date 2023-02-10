// approval/get-all-requests
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:donationapp/utils/base-client/base_client.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class pointServiceClass {
  final _client = ApiHelper.instance;

  //Get all donations or requests
  Future<Map<String, dynamic>> points(userId) async {
    try {
      final token = StorageService.getToken();
      final response = await _client.get(
        "/user/point/$userId",
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

final pointPageService =
    Provider<pointServiceClass>((ref) => pointServiceClass());
