import 'dart:async';
import 'dart:developer';

import 'package:auto_route/annotations.dart';
import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/GoogleButtomNavBar/GoogleButtomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/domain/message/sub-modules/single.message.model.dart';
import 'package:donationapp/helpers/time.dart';
import 'package:donationapp/store/message/message.store.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageDetails extends ConsumerWidget {
  const MessageDetails(
      {Key? key,
      @PathParam("receiverName") required this.receiverName,
      @PathParam("receiverId") required this.receiverId})
      : super(key: key);
  final String receiverName;
  final String receiverId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ScrollController scrollController = ScrollController();

    // log()
    ref.watch(initializeMessage(receiverId));
    final messages = ref.watch(allMessageProvider);
    final messageService = ref.watch(messageProvider);
    final messageControllerValue = ref.watch(messageController);
    final user = StorageService.getUser();

    void scrollToBottom() {
      if (scrollController.hasClients) {
        scrollController.animateTo(scrollController.position.maxScrollExtent,
            duration: Duration(milliseconds: 300), curve: Curves.elasticOut);
      } else {
        Timer(Duration(milliseconds: 400), () => scrollToBottom());
      }
    }

    handleMessage() async {
      try {
        final resp = await messageService.sendMessage(
            {"message": messageControllerValue.text, "receiver": receiverId});
        log('$resp');
        ref.read(allMessageProvider.notifier).state = [...messages, resp];
        ref.refresh(messageController);
        FocusScope.of(context).unfocus();
        // ignore: use_build_context_synchronously

      } catch (e) {
        log('$e the success');
        const snackBar = SnackBar(
          content: Text('Please enter correct email or password'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        // CustomScaffoldMessenger.error(
        //     "Please enter correct email or password", context);
      }
    }

    log('32 32 $user');
    return RefreshIndicator(
        onRefresh: () async {
          ref.watch(initializeMessage(receiverId));
          log('refrsh');
        },
        child: App(
            component: Container(
                height: ScreenUtil().screenHeight - 80.h,
                padding: EdgeInsets.all(kPadding.w),
                child: Column(
                  children: [
                    // Expanded(
                    //   child: ListView.builder(
                    //     shrinkWrap: true,
                    //     controller: scrollController,
                    //     itemBuilder: (context, index) {
                    //       return messages[index].sender!.id! == user['_id']
                    //           ? SenderMessageWidget(
                    //               data: messages[index],
                    //             )
                    //           : ReceiverMessageWIdget(data: messages[index]);
                    //     },
                    //     itemCount: messages.length,
                    //   ),
                    // ),
                    // ...messages.map((e) {
                    //   return e.sender!.id! == user['_id']
                    //       ? SenderMessageWidget(
                    //           data: e,
                    //         )
                    //       : ReceiverMessageWIdget(data: e);
                    // }),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.all(10.r),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 1, color: Colors.black)),
                        child: TextFormField(
                            controller: messageControllerValue,
                            onFieldSubmitted: (value) {
                              handleMessage();
                            },
                            decoration: InputDecoration(
                                hintText: 'Write a message..',
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      handleMessage();
                                    },
                                    icon: Icon(Icons.send)))),
                      ),
                    )
                  ],
                )),
            appbar: NavBar(
                title: receiverName.split("%20").join(" "), showBadge: false),
            bottomNavBar: const GoogleButtomNavBar(showBottomNavBar: false),
            isAdmin: false));
  }
}

class SenderMessageWidget extends StatelessWidget {
  const SenderMessageWidget({Key? key, required this.data}) : super(key: key);
  final SingleMessage data;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.only(right: 20.w, top: 10.h),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          // CircleAvatar(
          //   backgroundColor: Colors.grey,
          //   child: data.sender!.profilePic != null
          //       ? ClipRRect(
          //           borderRadius: BorderRadius.circular(20),
          //           child: CachedNetworkImage(
          //             placeholder: ((context, url) =>
          //                 const CircularProgressIndicator()),
          //             fit: BoxFit.cover,
          //             imageUrl: data.sender!.profilePic!,
          //           ))
          //       : Text(
          //           data.sender!.firstName![0],
          //           style: TextStyle(color: Colors.white, fontSize: 20.sp),
          //         ),
          // ),
          SizedBox(
            width: 5.h,
          ),
          Text(
            data.message!,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
          ),
        ]),
        SizedBox(
          height: 2.h,
        ),
        Text(
          convertToAgo(data.createdAt!),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
        ),
      ]),
    );
  }
}

class ReceiverMessageWIdget extends StatelessWidget {
  const ReceiverMessageWIdget({Key? key, required this.data}) : super(key: key);
  final SingleMessage data;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(right: 20.w, top: 10.h),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          // CircleAvatar(
          //   backgroundColor: Colors.grey,
          //   child: data.sender!.profilePic != null
          //       ? ClipRRect(
          //           borderRadius: BorderRadius.circular(20),
          //           child: CachedNetworkImage(
          //             placeholder: ((context, url) =>
          //                 const CircularProgressIndicator()),
          //             fit: BoxFit.cover,
          //             imageUrl: data.sender!.profilePic!,
          //           ))
          //       : Text(
          //           data.sender!.firstName![0],
          //           style: TextStyle(color: Colors.white, fontSize: 20.sp),
          //         ),
          // ),
          SizedBox(
            width: 5.h,
          ),
          Flexible(
            child: Text(
              data.message!,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp),
            ),
          ),
        ]),
        SizedBox(
          height: 2.h,
        ),
        Text(
          convertToAgo(data.createdAt!),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
        ),
      ]),
    );
  }
}
