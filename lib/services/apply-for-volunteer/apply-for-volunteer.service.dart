import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz_unsafe.dart';
import 'package:dio/dio.dart';
import 'package:donationapp/utils/base-client/base_client.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VolunteerServiceClass {
  final _client = ApiHelper.instance;

  //Functions for putting post request with data and image
  Future<Map<String, dynamic>> applyForVolunteer(data, image) async {
    // final singUpService
    dynamic response;
    try {
      final token = StorageService.getToken();
      log("message ${token}");
      final imageArr = [];

      //For uploading multiple images
      for (int i = 0; i < image.length; i++) {
        // final img = image
        log("this is image length ${image.length}");
        imageArr.add(
          await MultipartFile.fromFile(image[i]['filePath'],
              filename: image[i]['name']),
        );
        // log("message${await MultipartFile.fromFile(image[1]['filePath'], filename: image[1]['name'])}");
      }

      var formData =
          FormData.fromMap({'reason': data['reason'], 'images': imageArr});
      response = await _client.post(
        "/user/volunteer/apply",
        data: formData,
        options: Options(
          headers: {
            "Authorization":
                "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2MzNhZWU5MmUyYmY5Yjk2ZWI4Y2I2M2EiLCJyb2xlIjoidXNlciIsImlhdCI6MTY2NTA1NDA1OCwiZXhwIjoxNjY1MTQwNDU4fQ.TY_LxcnM47wgsWGkCdNYfFlsU958PBbf5FXkMxYTkeA"
          },
        ),
      );
      // log("${response}");
      return response;
    } catch (e) {
      // log("this is error$e['message]");
      throw e;
    }
  }

  // Future<Map<String, dynamic>> getDontaionsById(id) async {
  //   // final singUpService
  //   try {
  //     // log("message");
  //     final token = StorageService.getToken();
  //     final response = await _client.get(
  //       "/user/donation/${id}",
  //       options: Options(
  //         headers: {"Authorization": "Bearer ${token}"},
  //       ),
  //     );
  //     // log("this is from $response['body']");
  //     // log("${response.statusCode}");
  //     // if(response.statusCode(400) )
  //     // StorageService.setToken(response['token']);

  //     return response;
  //   } catch (e) {
  //     log("this is error$e");
  //     throw Exception("Invalid Request $e");
  //   }
  // }
}

final volunteerService =
    Provider<VolunteerServiceClass>((ref) => VolunteerServiceClass());
