// /admin/numbers

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:donationapp/domain/user/user.model.dart';
import 'package:donationapp/utils/base-client/base_client.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AdminDashboardServiceClass {
  final _client = ApiHelper.instance;

  Future<Map<String, dynamic>> getDashboardDetails() async {
    // final singUpService
    try {
      final token = StorageService.getToken();
      // log("this is from$token");
      final response = await _client.get(
        "/admin/numbers",
        options: Options(
          headers: {"Authorization": "Bearer ${token}"},
        ),
      );

      // log("${response.statusCode()}");
      // if(response.statusCode(400) )
      // StorageService.setToken(response['token']);

      return response;
    } catch (e) {
      // log("this is error$e");
      throw Exception("Invalid Request $e");
    }
  }

  Future<Map<String, dynamic>> getPendingVolunteers() async {
    // final singUpService
    try {
      final token = StorageService.getToken();
      // log("this is from$token");
      final response = await _client.get(
        "/admin/volunteer/pending",
        options: Options(
          headers: {"Authorization": "Bearer ${token}"},
        ),
      );
      return response;
    } catch (e) {
      // log("this is error$e");
      throw Exception("Invalid Request $e");
    }
  }

  Future<Map<String, dynamic>> approveVolunteer(
    userId,
    type,
  ) async {
    try {
      final token = StorageService.getToken();
      final response = await _client.post(
        "/admin/volunteer/${type}/${userId}",
        options: Options(
          headers: {"Authorization": "Bearer ${token}"},
        ),
      );

      return response;
    } catch (e) {
      // log("this is error$e");
      throw Exception("Invalid Request $e");
    }
  }

  Future<Map<String, dynamic>> approveDonation(
    donationId,
    type,
  ) async {
    try {
      final token = StorageService.getToken();
      final response = await _client.post(
        "/admin/donation/${type}/${donationId}",
        options: Options(
          headers: {"Authorization": "Bearer ${token}"},
        ),
      );

      return response;
    } catch (e) {
      // log("this is error$e");
      throw Exception("Invalid Request $e");
    }
  }

  Future<Map<String, dynamic>> approveRequest(
    userId,
    type,
  ) async {
    try {
      final token = StorageService.getToken();
      final response = await _client.post(
        "/admin/request/${type}/${userId}",
        options: Options(
          headers: {"Authorization": "Bearer ${token}"},
        ),
      );

      return response;
    } catch (e) {
      // log("this is error$e");
      throw Exception("Invalid Request $e");
    }
  }

  Future<Map<String, dynamic>> getPendingDonations() async {
    try {
      final token = StorageService.getToken();
      final response = await _client.get(
        "/admin/donations/pending",
        options: Options(
          headers: {"Authorization": "Bearer ${token}"},
        ),
      );

      return response;
    } catch (e) {
      // log("this is error$e");
      throw Exception("Invalid Request $e");
    }
  }

  Future<Map<String, dynamic>> getPendingRequest() async {
    try {
      final token = StorageService.getToken();
      final response = await _client.get(
        "/admin/requests/pending",
        options: Options(
          headers: {"Authorization": "Bearer ${token}"},
        ),
      );

      return response;
    } catch (e) {
      // log("this is error$e");
      throw Exception("Invalid Request $e");
    }
  }

  Future<Map<String, dynamic>> getAllDonations() async {
    try {
      final token = StorageService.getToken();
      final response = await _client.get(
        "/user/donation/all",
        options: Options(
          headers: {"Authorization": "Bearer ${token}"},
        ),
      );

      return response;
    } catch (e) {
      // log("this is error$e");
      throw Exception("Invalid Request $e");
    }
  }

  Future<Map<String, dynamic>> getAllVolunteers() async {
    try {
      final token = StorageService.getToken();
      final response = await _client.get(
        "/admin/volunteers",
        options: Options(
          headers: {"Authorization": "Bearer ${token}"},
        ),
      );

      return response;
    } catch (e) {
      // log("this is error$e");
      throw Exception("Invalid Request $e");
    }
  }

  //Get Single volunteer application details requesr
  Future<Map<String, dynamic>> getSingleVolunteerApplicationRequesr(
      applicationId) async {
    log("Application id is $applicationId");
    try {
      final token = StorageService.getToken();
      final response = await _client.get(
        "/admin/volunteer/application/${applicationId}",
        options: Options(
          headers: {"Authorization": "Bearer ${token}"},
        ),
      );

      return response;
    } catch (e) {
      // log("this is error$e");
      throw Exception("Invalid Request $e");
    }
  }
}

final adminDashboardService =
    Provider<AdminDashboardServiceClass>((ref) => AdminDashboardServiceClass());
