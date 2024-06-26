// approval/get-all-requests
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:donationapp/utils/base-client/base_client.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddPreferredLocationServiceClass {
  final _client = ApiHelper.instance;

  //Get all donations or requests
  Future<Map<String, dynamic>> addPreferredLocation(data) async {
    try {
      final token = StorageService.getToken();
      final response = await _client.post(
        "/user/donation-location",
        data: data,
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

  // Display the preferred locations
  Future<Map<String, dynamic>> getPreferredLocations() async {
    try {
      // log("Data: ${donationId}");
      final token = StorageService.getToken();
      final response = await _client.get(
        "/user/donation-location",
        options: Options(
          headers: {"Authorization": "Bearer ${token}"},
        ),
      );
      // log("THis is from change status:$response");
      return response;
    } catch (e) {
      log("this is error$e");
      throw Exception("Invalid Request $e");
    }
  }

  // Display the preferred locations
  Future<Map<String, dynamic>> getSinglePreferredLocation(id) async {
    try {
      // log("Data: ${donationId}");
      final token = StorageService.getToken();
      final response = await _client.get(
        "/user/donation-location/$id",
        options: Options(
          headers: {"Authorization": "Bearer ${token}"},
        ),
      );
      // log("THis is from change status:$response");
      return response;
    } catch (e) {
      log("this is error$e");
      throw Exception("Invalid Request $e");
    }
  }
}

final addPreferredService = Provider<AddPreferredLocationServiceClass>(
    (ref) => AddPreferredLocationServiceClass());
