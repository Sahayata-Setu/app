// /volunteer/campaigns/user/633ac7c777b5e8fd0f92c6ba
// approval/get-all-requests
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:donationapp/utils/base-client/base_client.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VolunteerServiceClass {
  final _client = ApiHelper.instance;

  //Get all donations or requests
  Future<Map<String, dynamic>> getVolunteersPostByUserId(userId) async {
    try {
      final token = StorageService.getToken();
      final response = await _client.get(
        "/volunteer/campaigns/user/$userId",
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

final volunteerApiService =
    Provider<VolunteerServiceClass>((ref) => VolunteerServiceClass());
