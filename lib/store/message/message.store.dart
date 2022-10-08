import 'dart:developer';

import 'package:donationapp/domain/message/message.model.dart';
import 'package:donationapp/services/homepage/homepage.service.dart';
import 'package:donationapp/services/message/message.services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoriesProvider = StateProvider((ref) => true);
final messageController = StateProvider((ref) => TextEditingController());

final allConnectedUsersProvider = FutureProvider<List<Messages>>(
  (ref) {
    return ref.watch(messageService).getConnectUsers();
  },
);
final StateProvider<List<Messages>> allMessageProvider =
    StateProvider((ref) => []);

class MessageNotifier extends ChangeNotifier {
  MessageNotifier(this.read) : super();
  final Reader read;

  // @override
  sendMessage(data) async {
    final messageServiceProvider = read(messageService);
    try {
      final resp = await messageServiceProvider.sendMessage(data);
      notifyListeners();
      return resp;
    } catch (e) {
      rethrow;
    }
  }
}

final messageProvider = ChangeNotifierProvider.autoDispose<MessageNotifier>(
    (ref) => MessageNotifier(ref.read));

final initializeMessage = FutureProvider.family<List<Messages>, String>(
  (ref, id) {
    return ref.watch(messageService).getAllMessage(id).then(
      (resp) {
        log('here');
        ref.read(allMessageProvider.notifier).state = resp;
        return resp;
      },
    );
  },
);
