import 'dart:developer';

import 'package:donationapp/utils/base-client/base_client.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginServiceClass {
  final _client = ApiHelper.instance;

  //
  Future<Map<String, dynamic>> login(data) async {
    // final singUpService
    try {
      // log("this is from$data");
      final response = await _client.post("/auth/login", data: data);
      // log("${response['token']}");
      // if(response.statusCode(400) )
      StorageService.setToken(response['token']);

      return response;
    } catch (e) {
      // log("this is error$e");
      throw Exception("Invalid Request $e");
    }
  }
}

final loginService =
    Provider.autoDispose<LoginServiceClass>((ref) => LoginServiceClass());
