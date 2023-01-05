import 'dart:async';
import 'dart:developer';

import 'package:donationapp/features/new-message/store/socket-service.dart';
import 'package:donationapp/store/message/message.store.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socket_io_client/socket_io_client.dart';

final providerOfSocket = StreamProvider.autoDispose((ref) async* {
  StreamController stream = StreamController();

  SocketService().socket.onerror((err) => log(err));
  SocketService().socket.onDisconnect((_) => log('disconnect'));
  // SocketService().socket.on('fromServer', (_) => log(_));
  // SocketService().socket.on('fromServer', (_) => log(_));
  // SocketService().socket.onConnect((data) => data);

  // SocketService().socket.on('message', (data) {
  //   // log("this is socket data$data");

  //   stream.add(data);

  //   log(data.toString());
  // });

  // SocketService().socket.onerror((_) {
  //   log("Error IS ${_.toString()}");
  // });

  /** if you using .autDisopose */
  // ref.onDispose(() {
  //   // close socketio
  //   _stream.close();
  //   SocketService().socket.dispose();
  // });

  await for (final value in stream.stream) {
    // log("Stream value: ${stream.stream}");

    log('stream value => ${value.toString()}');
    yield value;
  }
});
