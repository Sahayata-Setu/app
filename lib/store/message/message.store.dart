import 'dart:developer';

import 'package:donationapp/domain/message/message.model.dart';
import 'package:donationapp/domain/message/sub-modules/single.message.model.dart';
import 'package:donationapp/services/homepage/homepage.service.dart';
import 'package:donationapp/services/message/message.services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:socket_io_client/socket_io_client.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

final categoriesProvider = StateProvider((ref) => true);
final recieverIdProvider = StateProvider((ref) => "");
final messageController = StateProvider((ref) => TextEditingController());

final allConnectedUsersProvider = FutureProvider.autoDispose<List<Messages>>(
  (ref) {
    return ref.watch(messageService).getConnectUsers();
  },
);

final allMessages = StateProvider((ref) => []);
final StateProvider<List<SingleMessage>> allMessageProvider =
    StateProvider((ref) => []);
final loadig = StateProvider((ref) => true);

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

final initializeMessage =
    FutureProvider.family.autoDispose<List<SingleMessage>, String>(
  (ref, id) {
    return ref.watch(messageService).getAllMessage(id).then(
      (resp) {
        // log('here--------------$resp');

        ref.read(allMessages.notifier).state = resp;
        ref.read(loadig.notifier).state = false;
        return resp;
      },
    );
  },
);

// final initMethod =
//     FutureProvider.family.autoDispose<List<SingleMessage>, String>(
//   (ref, id) {
//     late IO.Socket _socket;
//     _socket = IO.io('http://10.0.2.2:5000',
//         IO.OptionBuilder().setTransports(['websocket']).setQuery({}).build());

//     return ref.watch(messageService).getAllMessage(id).then(
//       (resp) {
//         log('hell0');
//         ref.read(allMessageProvider.notifier).state = resp;
//         return resp;
//       },
//     );
//   },
// );
