import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:donationapp/domain/message/message.model.dart';
import 'package:donationapp/utils/base-client/base_client.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MessageServiceClass {
  final _client = ApiHelper.instance;

  Future<List<Messages>> getConnectUsers() async {
    dynamic response;
    try {
      final token = StorageService.getToken();
      response = await _client.get(
        "/message/connected-users",
        options: Options(
          headers: {"Authorization": "Bearer ${token}"},
        ),
      );

      log("$response");

      List<Messages> message = [];
      response['body'].forEach((resp) {
        message.add(Messages.fromJson(resp));
      });

      log("this is response for update profile ${response}");
      return message;
    } catch (err) {
      log("this is  34 ${err}");
      throw Exception("${response["message"]}");
    }
  }

  Future<List<Messages>> getAllMessage(receiverId) async {
    dynamic response;
    try {
      final token = StorageService.getToken();
      response = await _client.get(
        "/message/receiver/$receiverId",
        options: Options(
          headers: {"Authorization": "Bearer ${token}"},
        ),
      );

      log("$response");

      List<Messages> message = [];
      response['body'].forEach((resp) {
        message.add(Messages.fromJson(resp));
      });

      log("this is response for update profile ${response}");
      return message;
    } catch (err) {
      log("this is  34 ${err}");
      throw Exception("${response["message"]}");
    }
  }

  Future<Messages> sendMessage(data) async {
    dynamic response;
    try {
      final token = StorageService.getToken();
      response = await _client.post(
        "/message/",
        data: data,
        options: Options(
          headers: {"Authorization": "Bearer ${token}"},
        ),
      );
      return Messages.fromJson(response['body']);
    } catch (err) {
      throw Exception("${response["message"]}");
    }
  }
}

final messageService =
    Provider<MessageServiceClass>((ref) => MessageServiceClass());
