// approval/get-all-requests
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:donationapp/utils/base-client/base_client.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DonationClaimServiceClass {
  final _client = ApiHelper.instance;

  //Get all donations or requests
  Future<Map<String, dynamic>> getDonationClaimRequests() async {
    try {
      final token = StorageService.getToken();
      final response = await _client.get(
        "/approval/get-all-requests",
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

  //Get all requests that need to be claimed
  Future<Map<String, dynamic>> getNeedClaimRequests() async {
    try {
      final token = StorageService.getToken();
      final response = await _client.get(
        "/approval/get-all-requests-need",
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
  Future<dynamic> changeRequest(donationId) async {
    try {
      log("Data: ${donationId}");
      final token = StorageService.getToken();
      final response = await _client.post(
        "/approval/change-request-status",
        data: {"donationId": donationId},
        options: Options(
          headers: {"Authorization": "Bearer ${token}"},
        ),
      );
      log("THis is from change status:$response");
      return response;
    } catch (e) {
      log("this is error$e");
      throw Exception("Invalid Request $e");
    }
  }

  //Change need reciever request status
  Future<dynamic> changeNeedRequest(needId) async {
    try {
      log("Data: ${needId}");
      final token = StorageService.getToken();
      final response = await _client.post(
        "/approval/change-request-status-need",
        data: {"needId": needId},
        options: Options(
          headers: {"Authorization": "Bearer ${token}"},
        ),
      );
      log("THis is from change status:$response");
      return response;
    } catch (e) {
      log("this is error$e");
      throw Exception("Invalid Request $e");
    }
  }

  //Change donationstatus of post
  Future<dynamic> changeStatusOfPost() async {
    try {
      // log("Data: ${donationId}");
      final token = StorageService.getToken();
      final response = await _client.post(
        "/approval/change-status-donation",
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

  //Change need status of post
  Future<dynamic> changeNeedPostStatus() async {
    try {
      // log("Data: ${donationId}");
      final token = StorageService.getToken();
      final response = await _client.post(
        "/approval/change-status-need",
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

  //Increase the point on successful approval
  Future<dynamic> increasePoint(userId) async {
    try {
      // log("Data: ${donationId}");
      final token = StorageService.getToken();
      final response = await _client.post(
        "/user/point/${userId}",
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

  Future<Map<String, dynamic>> createRequestForNeed(data) async {
    log("Data: ${data}");
    try {
      final token = StorageService.getToken();
      // log("Hello ${category}");
      final response = await _client.post(
        "/approval/create-need-request",
        data: data,
        options: Options(
          headers: {"Authorization": "Bearer ${token}"},
        ),
      );

      log("this is from app ${response}");

      return response;
    } catch (e) {
      log("this is error$e");
      throw Exception("Invalid Request $e");
    }
  }
}

final donationsClaimService =
    Provider<DonationClaimServiceClass>((ref) => DonationClaimServiceClass());
