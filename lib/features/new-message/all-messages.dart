import 'dart:developer';

import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/loading/loadingPage.dart';
import 'package:donationapp/domain/new-message/chatUserModel.dart';
import 'package:donationapp/features/new-message/conversation-list.dart';
import 'package:donationapp/store/message/message.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NewMessage extends ConsumerWidget {
  List<ChatUsers> chatUsers = [
    ChatUsers(
      name: "Jane Russel",
      messageText: "Awesome Setup",
      imageURL: "images/profileicon.png",
      time: "Now",
    ),
    ChatUsers(
      name: "Glady's Murphy",
      messageText: "That's Great",
      imageURL: "images/profileicon.png",
      time: "Yesterday",
    ),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messages = ref.watch(allConnectedUsersProvider);

    return App(
      component: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: RefreshIndicator(
          onRefresh: () async {
            ref.refresh(allConnectedUsersProvider);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Conversations",
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 8, right: 8, top: 2, bottom: 2),
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.pink[50],
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.add,
                              color: Colors.pink,
                              size: 20,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "Add New",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search...",
                    hintStyle: TextStyle(color: Colors.grey.shade600),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey.shade600,
                      size: 20,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    contentPadding: EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey.shade100)),
                  ),
                ),
              ),
              //Message List of the users

              messages.when(
                  data: (data) {
                    // log("This is all message dta: ${data[0]}");
                    return ListView.builder(
                      itemCount: data.length,
                      shrinkWrap: true,
                      padding: EdgeInsets.only(top: 16),
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return ConversationList(
                          name: data[index].firstName!,
                          receiverId: data[index].id,
                          messageText: data[index].message!,
                          imageUrl: "",
                          time: data[index].createdAt!,
                          createdAt: data[index].createdAt!,
                          isMessageRead:
                              (index == 0 || index == 3) ? true : false,
                        );
                      },
                    );
                  },
                  error: (e, h) => Text("Something went worng"),
                  loading: () => LoadingPage()),

              //
            ],
          ),
        ),
      ),
      appbar: NavBar(
        showBadge: false,
        title: "Messages",
      ),
      bottomNavBar: BottomNavBar(showBottomNavBar: true),
      isAdmin: false,
    );
    // return Scaffold(
    //   body: SingleChildScrollView(
    //     physics: BouncingScrollPhysics(),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: <Widget>[
    //         SafeArea(
    //           child: Padding(
    //             padding: EdgeInsets.only(left: 16, right: 16, top: 10),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: <Widget>[
    //                 Text(
    //                   "Conversations",
    //                   style:
    //                       TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    //                 ),
    //                 Container(
    //                   padding:
    //                       EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
    //                   height: 30,
    //                   decoration: BoxDecoration(
    //                     borderRadius: BorderRadius.circular(30),
    //                     color: Colors.pink[50],
    //                   ),
    //                   child: Row(
    //                     children: <Widget>[
    //                       Icon(
    //                         Icons.add,
    //                         color: Colors.pink,
    //                         size: 20,
    //                       ),
    //                       SizedBox(
    //                         width: 2,
    //                       ),
    //                       Text(
    //                         "Add New",
    //                         style: TextStyle(
    //                             fontSize: 14, fontWeight: FontWeight.bold),
    //                       ),
    //                     ],
    //                   ),
    //                 )
    //               ],
    //             ),
    //           ),
    //         ),
    //         Padding(
    //           padding: EdgeInsets.only(top: 16, left: 16, right: 16),
    //           child: TextField(
    //             decoration: InputDecoration(
    //               hintText: "Search...",
    //               hintStyle: TextStyle(color: Colors.grey.shade600),
    //               prefixIcon: Icon(
    //                 Icons.search,
    //                 color: Colors.grey.shade600,
    //                 size: 20,
    //               ),
    //               filled: true,
    //               fillColor: Colors.grey.shade100,
    //               contentPadding: EdgeInsets.all(8),
    //               enabledBorder: OutlineInputBorder(
    //                   borderRadius: BorderRadius.circular(20),
    //                   borderSide: BorderSide(color: Colors.grey.shade100)),
    //             ),
    //           ),
    //         ),
    //         //Message List of the users

    //         ListView.builder(
    //           itemCount: chatUsers.length,
    //           shrinkWrap: true,
    //           padding: EdgeInsets.only(top: 16),
    //           physics: NeverScrollableScrollPhysics(),
    //           itemBuilder: (context, index) {
    //             return ConversationList(
    //               name: chatUsers[index].name,
    //               messageText: chatUsers[index].messageText,
    //               imageUrl: chatUsers[index].imageURL,
    //               time: chatUsers[index].time,
    //               isMessageRead: (index == 0 || index == 3) ? true : false,
    //             );
    //           },
    //         ),

    //         //
    //       ],
    //     ),
    //   ),
    // );
  }
}
