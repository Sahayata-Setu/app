import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:donationapp/domain/message/message.model.dart';
import 'package:donationapp/domain/message/sub-modules/single.message.model.dart';
import 'package:donationapp/utils/base-client/base_client.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MessageServiceClass {
  final _client = ApiHelper.instance;

  Future<List<Messages>> getConnectUsers() async {
    dynamic response;

    try {
      final token = StorageService.getToken();
      log("this from 18 mess${token}");
      response = await _client.get(
        "/message/connected-users",
        options: Options(
          headers: {"Authorization": "Bearer ${token}"},
        ),
      );

      // log("this is from 25 mess ${response}");

      List<Messages> message = [];
      response['body'].forEach((resp) {
        message.add(Messages.fromJson(resp));
      });

      log("this is response for update profile ${message}");
      return message;
    } catch (err) {
      log("this is  34 ${err}");
      throw Exception("${response["message"]}");
    }
  }

  Future<List<SingleMessage>> getAllMessage(receiverId) async {
    dynamic response;
    try {
      final token = StorageService.getToken();
      response = await _client.get(
        "/message/receiver/$receiverId",
        options: Options(
          headers: {"Authorization": "Bearer ${token}"},
        ),
      );

      // log("$response");

      List<SingleMessage> message = [];
      response['body'].forEach((resp) {
        // log("fbfdgbh ${resp["sender"]["_id"]}");
        message.add(SingleMessage.fromJson({
          "id": resp["_id"],
          "sender": resp["sender"]["_id"],
          "receiver": resp["receiver"]["_id"],
          "message": resp["message"],
          "createdAt": resp["createdAt"],
        }));
        // message.add(SingleMessage.fromJson(resp));
      });

      // log("this is response for update profile ${message}");
      return message;
    } catch (err) {
      // log("this is  70 ${err}");
      throw Exception(err);
    }
  }

  Future<SingleMessage> sendMessage(data) async {
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
      // log("mess: ${response['_id']}");

      return SingleMessage.fromJson({
        "id": response['body']["_id"],
        "sender": response['body']["sender"]["_id"],
        "receiver": response['body']["receiver"]["_id"],
        "message": response['body']["message"],
        "createdAt": response['body']["createdAt"],
      });
    } catch (err) {
      throw Exception("fgvdfghdf${err}}");
    }
  }
}

final messageService =
    Provider<MessageServiceClass>((ref) => MessageServiceClass());
