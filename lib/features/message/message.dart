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
  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "Jane Russel",
        messageText: "Awesome Setup",
        image:
            "https://sahayog-setu.s3.ap-south-1.amazonaws.com/1665142561919-image",
        time: "Now"),
    ChatUsers(
        name: "Glady's Murphy",
        messageText: "That's Great",
        image:
            "https://sahayog-setu.s3.ap-south-1.amazonaws.com/1665142561919-image",
        time: "Yesterday"),
    ChatUsers(
        name: "Jorge Henry",
        messageText: "Hey where are you?",
        image:
            "https://sahayog-setu.s3.ap-south-1.amazonaws.com/1665142561919-image",
        time: "31 Mar"),
    ChatUsers(
        name: "Philip Fox",
        messageText: "Busy! Call me in 20 mins",
        image:
            "https://sahayog-setu.s3.ap-south-1.amazonaws.com/1665142561919-image",
        time: "28 Mar"),
    ChatUsers(
        name: "Debra Hawkins",
        messageText: "Thankyou, It's awesome",
        image:
            "https://sahayog-setu.s3.ap-south-1.amazonaws.com/1665142561919-image",
        time: "23 Mar"),
    ChatUsers(
        name: "Jacob Pena",
        messageText: "will update you in evening",
        image:
            "https://sahayog-setu.s3.ap-south-1.amazonaws.com/1665142561919-image",
        time: "17 Mar"),
    ChatUsers(
        name: "Andrey Jones",
        messageText: "Can you please share the file?",
        image:
            "https://sahayog-setu.s3.ap-south-1.amazonaws.com/1665142561919-image",
        time: "24 Feb"),
    ChatUsers(
        name: "John Wick",
        messageText: "How are you?",
        image:
            "https://sahayog-setu.s3.ap-south-1.amazonaws.com/1665142561919-image",
        time: "18 Feb"),
  ];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messages = ref.watch(allConnectedUsersProvider);
    return App(
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
                  return ConversationList(
                    name: data[index].receiver!.firstName!,
                    receiverId: data[index].receiver!.id ?? "",
                    messageText: data[index].message!,
                    imageUrl: data[index].receiver!.profilePic ?? "",
                    time: chatUsers[index].time,
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
      bottomNavBar: BottomNavBar(showBottomNavBar: true),
    );
  }
}
