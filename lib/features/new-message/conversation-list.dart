import 'dart:developer';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/features/new-message/chat-detail.dart';
import 'package:donationapp/helpers/time.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:socket_io_client/socket_io_client.dart';

class ConversationList extends StatefulWidget {
  String name;
  String messageText;
  String imageUrl;
  String time;
  bool isMessageRead;
  final receiverId;
  final createdAt;
  ConversationList({
    required this.name,
    required this.messageText,
    required this.imageUrl,
    required this.time,
    required this.isMessageRead,
    this.receiverId,
    this.createdAt,
  });
  @override
  _ConversationListState createState() => _ConversationListState();
}

class _ConversationListState extends State<ConversationList> {
  late IO.Socket socket;

  @override
  // void initState() {
  //   // TODO: implement initState
  //   try {
  //     socket = IO.io(
  //         'http://192.168.15.130:5000',
  //         // 'http://157.245.108.215:5000',
  //         OptionBuilder().setTransports(['websocket']) // for Flutter or Dart VM
  //             .setQuery({"token": StorageService.getToken()})
  //             // .disableAutoConnect() // disable auto-connection
  //             // .setExtraHeaders({'foo': 'bar'}) // optional
  //             .build());
  //     socket.connect();
  //     socket.on("username", handleUser);
  //   } catch (e) {
  //     print(e.toString());
  //   }
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //   socket.disconnect();
  //   // _messageController.clear();
  //   socket.off('username');
  // }

  handleUser(data) {
    log('this is data: ${data}');
  }

  @override
  Widget build(BuildContext context) {
    final senderId = StorageService.getId();
    log("conv: ${widget.name}");
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          // socket.emit('join', widget.receiverId);
          return ChatDetailPage(
            name: widget.name,
            sender: senderId,
            reciever: widget.receiverId,
          );
        }));
      },
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    // backgroundImage:
                    //     AssetImage("assets/images/profileicon.png"),
                    child: CustomText(
                      text: "${widget.name[0]}",
                      fontSize: 25.sp,
                      fontColor: Colors.white,
                    ),
                    backgroundColor: Colors.grey,
                    maxRadius: 30,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            widget.name,
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            widget.messageText,
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey.shade600,
                                fontWeight: widget.isMessageRead
                                    ? FontWeight.bold
                                    : FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              convertToAgo(widget.time),
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: widget.isMessageRead
                      ? FontWeight.bold
                      : FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
