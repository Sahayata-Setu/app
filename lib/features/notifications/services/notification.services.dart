// /notification/63a7e1d41d04f9eca38dd7e5
// approval/get-all-requests
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:donationapp/utils/base-client/base_client.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NotificationServiceClass {
  final _client = ApiHelper.instance;

  //Get all notifications
  Future<Map<String, dynamic>> getAllNotification(id) async {
    try {
      final token = StorageService.getToken();
      final response = await _client.get(
        "/notification/${id}",
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

  //Create notification
  Future<dynamic> createNotification(data) async {
    try {
      final token = StorageService.getToken();
      final response = await _client.post(
        "/notification",
        data: data,
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
}

final notificationService =
    Provider<NotificationServiceClass>((ref) => NotificationServiceClass());
