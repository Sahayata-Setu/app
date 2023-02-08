// approval/get-all-requests
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:donationapp/utils/base-client/base_client.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchServiceClass {
  final _client = ApiHelper.instance;

  //Get all donations or requests
  Future<Map<String, dynamic>> search(data) async {
    try {
      final token = StorageService.getToken();
      final response = await _client.get(
        "/user/search/$data",
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

  //Change reciever request status
  // Future<dynamic> changeRequest(donationId) async {
  //   try {
  //     log("Data: ${donationId}");
  //     final token = StorageService.getToken();
  //     final response = await _client.post(
  //       "/approval/change-request-status",
  //       data: {"donationId": donationId},
  //       options: Options(
  //         headers: {"Authorization": "Bearer ${token}"},
  //       ),
  //     );
  //     log("THis is from change status:$response");
  //     return response;
  //   } catch (e) {
  //     log("this is error$e");
  //     throw Exception("Invalid Request $e");
  //   }
  // }
}

final searchPageService =
    Provider<SearchServiceClass>((ref) => SearchServiceClass());
