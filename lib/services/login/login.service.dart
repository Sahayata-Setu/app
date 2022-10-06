import 'dart:async';
import 'dart:developer';

import 'package:donationapp/utils/base-client/base_client.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class AuthBase {
  Stream<String?> get checkAuth;

  Future<Map<String, dynamic>> login(Map<String, dynamic> req);

  Future<void> logOut();
}

class LoginServiceClass implements AuthBase {
  final _client = ApiHelper.instance;

  //
  LoginServiceClass() {
    _initUser();
  }

  _initUser() {
    String? str = StorageService.getToken();
    String? getUserType = StorageService.getuserType();
    log("${str == null}");
    if (str != '') {
      // log("this is str ${str}");
      controller.add(getUserType);
      controller.add(str);
    } else {
      controller.add(null);
    }
  }

  final controller = StreamController<String?>();
  @override
  Stream<String?> get checkAuth {
    log("${controller.stream}");
    return controller.stream;
  }

  @override
  Future<Map<String, dynamic>> login(req) async {
    // final singUpService
    try {
      // log("this is from$data");

      final response = await _client.post("/auth/login", data: req);
      log("this is from store ${response}");
      // if(response.statusCode(400) )
      log(response['userRole']);
      StorageService.setUserType(response['userRole']);
      StorageService.setToken(response['token']);

      return response;
    } catch (e) {
      // log("this is error$e");
      throw Exception("Invalid Request $e");
    }
  }

  @override
  Future<void> logOut() async {
    controller.add('');
    StorageService.removeAll();
    return;
  }
}

final loginService =
    Provider.autoDispose<LoginServiceClass>((ref) => LoginServiceClass());
