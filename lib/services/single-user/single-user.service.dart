import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:donationapp/domain/user/user.model.dart';
import 'package:donationapp/utils/base-client/base_client.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SingleUserServiceClass {
  final _client = ApiHelper.instance;

  //
  Future<Map<String, dynamic>> getSingleUser(userId) async {
    // final singUpService
    try {
      final token = StorageService.getToken();
      // log("this is from$token");
      final response = await _client.get(
        "/user/profile/633ac7c777b5e8fd0f92c6ba",
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
}

final singleUserService =
    Provider<SingleUserServiceClass>((ref) => SingleUserServiceClass());
