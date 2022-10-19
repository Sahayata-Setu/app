import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:donationapp/utils/base-client/base_client.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomepageServiceClass {
  final _client = ApiHelper.instance;

  //Get all donations or requests
  Future<Map<String, dynamic>> getDonationsOrRequest(type) async {
    try {
      final token = StorageService.getToken();
      final response = await _client.get(
        "/user/${type}/all",
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

  //Get donations by Id
  Future<Map<String, dynamic>> getDontaionsById(id) async {
    try {
      // log("message");
      final token = StorageService.getToken();
      final response = await _client.get(
        "/user/donation/${id}",
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

  //Fetch Requests by ID
  Future<Map<String, dynamic>> getRequestById(id) async {
    try {
      final token = StorageService.getToken();
      final response = await _client.get(
        "/user/request/${id}",
        options: Options(
          headers: {"Authorization": "Bearer ${token}"},
        ),
      );

      // log("this is from app ${response}");
      return response;
    } catch (e) {
      log("this is error$e");
      throw Exception("Invalid Request $e");
    }
  }

  //Get donations by category
  Future<Map<String, dynamic>> getDonationsByCategory(category) async {
    try {
      final token = StorageService.getToken();
      log("Hello ${category}");
      final response = await _client.get(
        "/user/donation/category/${category}",
        options: Options(
          headers: {"Authorization": "Bearer ${token}"},
        ),
      );

      // log("this is from app ${response}");

      return response;
    } catch (e) {
      log("this is error$e");
      throw Exception("Invalid Request $e");
    }
  }
}

final homePageService =
    Provider<HomepageServiceClass>((ref) => HomepageServiceClass());
