import 'dart:async';
import 'dart:developer';

import 'package:donationapp/constant/common/loading/loadingPage.dart';
import 'package:donationapp/domain/message/sub-modules/single.message.model.dart';
import 'package:donationapp/domain/new-message/message.dart';
import 'package:donationapp/features/new-message/store/socket-service.dart';
import 'package:donationapp/services/message/message.services.dart';
import 'package:donationapp/store/message/message.store.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:socket_io_client/socket_io_client.dart';

class ChatDetailPage extends ConsumerStatefulWidget {
  const ChatDetailPage({
    super.key,
    this.sender,
    this.reciever,
    this.name,
  });
  final sender;
  final reciever;
  final name;
  @override
  ConsumerState<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends ConsumerState<ChatDetailPage> {
  // ChatDetailPage(this.sender, this.reciever, this.name);
  // ChatDetailPage({super.key, this.sender, this.reciever, this.name});
  // var allM;
  // final name;
  // final allM;

  // @override
  // void initState() {
  //   // didChangeDependencies();
  //   SocketService().initConnection();
  //   final allM = ref.watch(allMessages);

  //   SocketService().socket.on("message", (data) {
  //     log("This is cd: $data");
  //     ref.read(allMessages.notifier).state = [
  //       ...allM,
  //       SingleMessage.fromJson(data)
  //       // {"id": data['id']}
  //     ];
  //   });
  //   // final value = ref.read(helloWorldProvider);
  //   super.initState();

  //   // print(value); // Hello world
  // }
  late IO.Socket socket;
  var _initState = true;
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    // SocketService().initConnection();

    if (_initState) {
      ref.watch(initializeMessage(widget.reciever));
      // log("Hello form init${widget.reciever}");

      // SocketService().initConnection();
      connectToServer();
      scrollToBottom();
      // final allM = ref.watch(allMessages);
      // SocketService().socket.on("message", (data) {
      // log("This is cd: $allM");
      //   ref.read(allMessages.notifier).state = [
      //     ...allM,
      //     SingleMessage.fromJson(data)
      //     // {"id": data['id']}
      //   ];
      // });
    }
    _initState = false;
    super.didChangeDependencies();
  }

  void connectToServer() {
    try {
      // final allMess = ref.watch(allMessages);
      // log("message: ${allMess.length}");
      socket = IO.io(
          // 'http://192.168.15.130:5000',
          'http://157.245.108.215:5000',
          OptionBuilder().setTransports(['websocket']) // for Flutter or Dart VM
              .setQuery({"token": StorageService.getToken()}).build());
      socket.connect();
      socket.emit("connect-new-user", StorageService.getId());
      socket.on('send-message-to-specific-user', handleData);
    } catch (e) {
      print(e.toString());
    }
  }

  handleData(data) {
    final allMess = ref.watch(allMessages);
    // log("All mess: $allMess");
    // log("This is cd--------------------: ${SingleMessage.fromJson(data)}");
    ref.read(allMessages.notifier).state = [
      ...allMess,
      SingleMessage.fromJson(data)
      // {"id": data['id']}
    ];
    _messageController.clear();
  }

  // handleUser(data) {
  //   final allMess = ref.watch(allMessages);
  //   // log("THis is all reciever 1 : ${allMess}");

  //   log("MEssage: ${SingleMessage.fromJson(data)}");
  //   ref.read(allMessages.notifier).state = [
  //     ...allMess,
  //     SingleMessage.fromJson(data)
  //     // {"id": data['id']}
  //   ];
  //   // log("THis is all reciever 2: ${allMess}");

  //   _messageController.clear();
  // }

  void scrollToBottom() {
    if (scrollController.hasClients) {
      scrollController.animateTo(scrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: 300), curve: Curves.elasticOut);
    } else {
      Timer(Duration(milliseconds: 400), () => scrollToBottom());
    }
  }

  @override
  void dispose() {
    super.dispose();
    socket.disconnect();
    _messageController.clear();
    // socket.off('connect-new-user');
    socket.off('send-message-to-specific-user');
    // socket.off('whispher');
  }

  ScrollController scrollController = ScrollController();
  TextEditingController _messageController = TextEditingController();
  // void init
  @override
  Widget build(BuildContext context) {
    // final messages = ref.watch(providerOfSocket);
    final messageService = ref.watch(messageProvider);
    // final allM = ref.watch(allMessages);
    // log("message: $allM");

    handleMessage() async {
      try {
        final resp = await messageService.sendMessage(
            {"message": _messageController.text, "receiver": widget.reciever});
        // log('this is sresp ${resp}');
        if (resp != null) {
          socket.emit("send-message-to-specific-user", {
            "id": resp.id,
            "message": "${_messageController.text}",
            "sender": widget.sender,
            "reciever": widget.reciever,
            "createdAt": resp.createdAt.toString(),
          });
          // socket.emit("join", widget.sender);
        }
      } catch (e) {
        log('$e the success');
        const snackBar = SnackBar(
          content: Text('Message not sent'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        // CustomScaffoldMessenger.error(
        //     "Please enter correct email or password", context);
      }
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                CircleAvatar(
                  // backgroundImage: NetworkImage(
                  //     "<https://randomuser.me/api/portraits/men/5.jpg>"),
                  maxRadius: 20,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "${widget.name}",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Online",
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 13),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.settings,
                  color: Colors.black54,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          // allM.when(
          // data: (data) {
          // log("This is mesageL: ${data.length}");
          Consumer(builder: (context, ref, child) {
            final allM = ref.watch(allMessages);
            final loading = ref.watch(loadig);
            return loading
                ? LoadingPage()
                : ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: allM.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(top: 10, bottom: 80),
                    // physics: NeverScrollableScrollPhysics(),
                    controller: scrollController,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.only(
                            left: 14, right: 14, top: 10, bottom: 10),
                        child: Align(
                          alignment: (allM[index].sender == widget.reciever
                              ? Alignment.topLeft
                              : Alignment.topRight),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: (allM[index].sender == widget.reciever
                                  ? Colors.grey.shade200
                                  : Colors.blue[200]),
                            ),
                            padding: EdgeInsets.all(16),
                            child: Text(
                              "${allM[index].message}",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                      );
                    },
                  );
          }),

          // messages.when(
          //     data: (data) {
          //       return ListView.builder(
          //         scrollDirection: Axis.vertical,
          //         itemCount: allM.length,
          //         shrinkWrap: true,
          //         padding: EdgeInsets.only(top: 10, bottom: 80),
          //         // physics: NeverScrollableScrollPhysics(),
          //         controller: scrollController,
          //         itemBuilder: (context, index) {
          //           return Container(
          //             padding: EdgeInsets.only(
          //                 left: 14, right: 14, top: 10, bottom: 10),
          //             child: Align(
          //               alignment: (allM == reciever
          //                   ? Alignment.topLeft
          //                   : Alignment.topRight),
          //               child: Container(
          //                 decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(20),
          //                   color: (allM == reciever
          //                       ? Colors.grey.shade200
          //                       : Colors.blue[200]),
          //                 ),
          //                 padding: EdgeInsets.all(16),
          //                 child: allM[index] == null
          //                     ? Container(
          //                         color: Colors.transparent,
          //                       )
          //                     : Text(
          //                         "${allM[index]['message']}",
          //                         style: TextStyle(fontSize: 15),
          //                       ),
          //               ),
          //             ),
          //           );
          //         },
          //       );
          //     },
          //     error: (e, h) => Text("WENT WRONG"),
          //     loading: () => LoadingPage())
          // },
          // error: (e, h) => Text("error"),
          // loading: () => LoadingPage(),

          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      controller: _messageController,
                      decoration: InputDecoration(
                          hintText: "Write message...",
                          hintStyle: TextStyle(color: Colors.black54),
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      // log("Mess: ${_messageController.text}");
                      if (_messageController.text.trim().isNotEmpty) {
                        // _sendMessage();

                        handleMessage();

                        // child: const Text('Send Message')),
                      }
                    },
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 18,
                    ),
                    backgroundColor: Colors.blue,
                    elevation: 0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
