import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:donationapp/utils/base-client/base_client.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// abstract class AuthBase {
//   Stream<User?> get checkAuth;

//   Future<User> login(Map<String, dynamic> req);

//   Future<void> logOut();
// }

class UpdateProfileServiceClass {
  final _client = ApiHelper.instance;

  Future<dynamic> updateProfile(id, data) async {
    dynamic response;
    // 624ae542f401a978126a5d8e
    log('this sis data$data');
    try {
      final token = StorageService.getToken();
      response = await _client.put(
        "/user/profile/633ac7c777b5e8fd0f92c6ba",
        data: data,
        options: Options(
          headers: {"Authorization": "Bearer ${token}"},
        ),
      );
      if (response != null) {
        log("this is up ${response}");
        return response;
      } else {
        log("this is 30 ${response}");
        // throw Exception("${response.message}");
      }
    } catch (err) {
      log("this is  34 ${err}");
      // throw Exception("${response["message"]}");
    }
  }
  // final verifyCodeService = read(signupServiceProvider);
  //   try {
  //     final resp = await verifyCodeService.getAreaSepecilist();
  //     read(moreDetails.notifier).state = {
  //       "location": resp["location"],
  //       "whatsappNotify": resp['whatsappNotify'],
  //       "emailNotify": resp['emailNotify'],
  //       "newProperty": resp['newProperty'],
  //       "newRequirements": resp['newRequirements'],
  //       "dailyTransaction": {
  //         "personal": resp['dailyTransaction']['personal'],
  //         "dld": resp['dailyTransaction']['dld']
  //       },
  //       "weeklyReport": {
  //         "personal": resp['weeklyReport']['personal'],
  //         "dld": resp['weeklyReport']['dld']
  //       },
  //       "monthlyReport": {
  //         "personal": resp['monthlyReport']['personal'],
  //         "dld": resp['monthlyReport']['dld']
  //       }
  //     };
  //     return resp;
  //   } catch (e) {
  //     log('$e');
  //     rethrow;
  //   }
  // }
}

final updateProfileService =
    Provider<UpdateProfileServiceClass>((ref) => UpdateProfileServiceClass());
