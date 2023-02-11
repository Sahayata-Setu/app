import 'dart:developer';

import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/GoogleButtomNavBar/GoogleButtomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/loading/loadingPage.dart';
import 'package:donationapp/domain/new-message/chatUserModel.dart';
import 'package:donationapp/features/new-message/conversation-list.dart';
import 'package:donationapp/store/message/message.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constant/common/NavBar/adminNavBar.dart';
import '../Dashboard/widgets/drawer.dart';

class AdminMessage extends ConsumerWidget {
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

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AdminNavBar(title: "Messages"),
      ),
      drawer: Menu_Drawer(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[],
                ),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(top: 16, left: 16, right: 16),
            //   child: TextField(
            //     decoration: InputDecoration(
            //       hintText: "Search...",
            //       hintStyle: TextStyle(color: Colors.grey.shade600),
            //       prefixIcon: Icon(
            //         Icons.search,
            //         color: Colors.grey.shade600,
            //         size: 20,
            //       ),
            //       filled: true,
            //       fillColor: Colors.grey.shade100,
            //       contentPadding: EdgeInsets.all(8),
            //       enabledBorder: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(20),
            //           borderSide: BorderSide(color: Colors.grey.shade100)),
            //     ),
            //   ),
            // ),
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
                        name:
                            "${data[index].firstName!} ${data[index].lastName!}",
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
    );
  }
}
