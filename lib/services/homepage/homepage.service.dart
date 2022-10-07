import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:donationapp/utils/base-client/base_client.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomepageServiceClass {
  final _client = ApiHelper.instance;

  //
  Future<Map<String, dynamic>> getDonationsOrRequest(type) async {
    // final singUpService
    try {
      // log("message");
      final token = StorageService.getToken();
      // log("ths is for tojen ${token}");
      final response = await _client.get(
        "/user/${type}/all",
        options: Options(
          headers: {"Authorization": "Bearer ${token}"},
        ),
      );
      // log("this is from $response['body']");
      // log("${response.statusCode}");
      // if(response.statusCode(400) )
      // StorageService.setToken(response['token']);

      return response;
    } catch (e) {
      log("this is error$e");
      throw Exception("Invalid Request $e");
    }
  }

  Future<Map<String, dynamic>> getDontaionsById(id) async {
    // final singUpService
    try {
      // log("message");
      final token = StorageService.getToken();
      final response = await _client.get(
        "/user/donation/${id}",
        options: Options(
          headers: {"Authorization": "Bearer ${token}"},
        ),
      );

      log("this is from app ${response}");
      // log("this is from $response['body']");
      // log("${response.statusCode}");
      // if(response.statusCode(400) )
      // StorageService.setToken(response['token']);

      return response;
    } catch (e) {
      log("this is error$e");
      throw Exception("Invalid Request $e");
    }
  }
}

final homePageService =
    Provider<HomepageServiceClass>((ref) => HomepageServiceClass());
