import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz_unsafe.dart';
import 'package:dio/dio.dart';
import 'package:donationapp/utils/base-client/base_client.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CampaignServiceClass {
  final _client = ApiHelper.instance;

  //Functions for putting post request with data and image
  Future<Map<String, dynamic>> createCampaign(
      data, image, startDate, endDate) async {
    // final singUpService
    dynamic response;
    // log("this is from service ${data['city']}");
    try {
      final token = StorageService.getToken();
      final imageArr = [];
      log("hello");
      //For uploading multiple images
      for (int i = 0; i < image.length; i++) {
        log("this is image length ${image.length}");
        imageArr.add(
          await MultipartFile.fromFile(image[i]['filePath'],
              filename: image[i]['name']),
        );
        // log("message${await MultipartFile.fromFile(image[1]['filePath'], filename: image[1]['name'])}");
      }
      // log("This is imageArr${imageArr}");
      var formData = FormData.fromMap(
        {
          'title': data['title'],
          'location': data['location'],
          'eventTime': data['eventTime'],
          'startTime': startDate,
          'endTime': endDate,
          'description': data['description'],
          'images': imageArr,
        },
      );
      response = await _client.post(
        "/volunteer/campaign/create",
        data: formData,
        options: Options(
          headers: {"Authorization": "Bearer ${token}"},
        ),
      );
      log("this is response ${response}");
      return response;
    } catch (e) {
      log("this is error$e");
      throw e;
    }
  }

  //Functions for putting post request with data and image
  Future<Map<String, dynamic>> getApprovedCampaigns() async {
    // final singUpService
    dynamic response;
    try {
      final token = StorageService.getToken();
      response = await _client.get(
        "/user/explore/campaigns",
        // data: formData,
        options: Options(
          headers: {"Authorization": "Bearer ${token}"},
        ),
      );
      log("this is response ${response}");
      return response;
    } catch (e) {
      log("this is error$e");
      throw e;
    }
  }
}

final campaignService =
    Provider<CampaignServiceClass>((ref) => CampaignServiceClass());
