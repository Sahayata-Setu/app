import 'dart:developer';

import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/message/widgets/conversationsList.dart';
import 'package:donationapp/features/message/widgets/messageCards.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/store/message/message.store.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/common/GoogleButtomNavBar/GoogleButtomNavBar.dart';

class ChatUsers {
  String name;
  String messageText;
  String image;
  String time;
  ChatUsers(
      {required this.name,
      required this.messageText,
      required this.image,
      required this.time});
}

class Message extends ConsumerWidget {
  Message({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messages = ref.watch(allConnectedUsersProvider);
    return RefreshIndicator(
      onRefresh: () async {
        ref.refresh(allConnectedUsersProvider);
      },
      child: App(
        component: messages.when(
          data: (data) {
            // log("ffg");
            return Container(
                height: ScreenUtil().screenHeight,
                padding: EdgeInsets.all(kPadding.w),
                child: ListView.builder(
                  itemCount: data.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(top: 16),
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    // return Container();
                    return ConversationList(
                      name: data[index].firstName!,
                      receiverId: data[index].id ?? "",
                      messageText: data[index].message!,
                      imageUrl: "",
                      time: data[index].createdAt!,
                      createdAt: data[index].createdAt!,
                      isMessageRead: (index == 0 || index == 3) ? true : false,
                    );
                  },
                ));
          },
          error: (h, e) {
            return Padding(
              padding: EdgeInsets.all(kPadding1.w),
              child: CustomText(text: "Error occured, Please try later"),
            );
          },
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
        appbar: NavBar(
          title: "Messages",
          showBadge: true,
        ),
        isAdmin: false,
        bottomNavBar: GoogleButtomNavBar(showBottomNavBar: true),
      ),
    );
  }
}
