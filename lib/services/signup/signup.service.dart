import 'dart:developer';

import 'package:donationapp/utils/base-client/base_client.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpServiceClass {
  final _client = ApiHelper.instance;

  //
  Future<Map<String, dynamic>> signUp(data) async {
    // final singUpService
    try {
      log("this is from$data");
      final response = await _client.post("/auth/signup", data: data);
      // log("${response.statusCode()}");
      // if(response.statusCode(400) )
      StorageService.setToken(response['token']);
      StorageService.setUserType(response['userRole']);
      StorageService.setId(response['userId']);
      // StorageService.setToken(response['token']);

      return response;
    } catch (e) {
      // log("this is error$e");
      throw Exception("Invalid Request $e");
    }
  }
}

final signUpService =
    Provider.autoDispose<SignUpServiceClass>((ref) => SignUpServiceClass());
