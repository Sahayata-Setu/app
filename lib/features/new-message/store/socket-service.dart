import 'dart:developer';

import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketService {
  IO.Socket socket = IO.io(
      // im using adb so i need to use my wifi ip
      // 'http://157.245.108.215:5000',
      'http://10.0.2.2:5000',
      IO.OptionBuilder().setTransports(['websocket']).setQuery({}).build());
  // handleMessage(data) {
  //   log("Data f${data}");
  // }

  initConnection() {
    // socket.connect();
    socket.onConnect((data) => print("Connection Established"));
    socket.onConnectError((data) => print("Connect error ${data}"));
    socket.onDisconnect((data) => print("Socket.IO server disconnected"));
    // socket.on("message", (data) => handleMessage(data));
    // socket.on('connection', (_) {
    //   log('connect ${_.toString()}');
    // });
    // log('Trying Connection');
    // socket.onConnect((_) {
    //   log('connect');
    // });

    // socket.onerror((_) {
    //   log('Error Is ${_.toString()}');
    // });
  }

  // dispose() {}

  sendMessage(message) {
    socket.emit('message', message);
  }
}
