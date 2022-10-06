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
      final response = await _client.get(
        "/user/donation/all",
        options: Options(
          headers: {
            "Authorization":
                "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2MzNhZWU5MmUyYmY5Yjk2ZWI4Y2I2M2EiLCJyb2xlIjoidXNlciIsImlhdCI6MTY2NDkwNzg3NCwiZXhwIjoxNjY0OTk0Mjc0fQ.VbtTY8MhLHR1TViVFp7SnYRjaaugP6ERwn1UQq5Amg4"
          },
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
}

final homePageService =
    Provider<HomepageServiceClass>((ref) => HomepageServiceClass());
