import 'dart:developer';

import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/loading/loadingPage.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/notifications/store/notification.store.dart';
import 'package:donationapp/features/notifications/widgets/notificationCard.dart';
import 'package:donationapp/helpers/time.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/common/GoogleButtomNavBar/GoogleButtomNavBar.dart';

class Notifications extends ConsumerWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userId = StorageService.getId();
    final notifications = ref.watch(getAllNotificationProvider(userId));
    return App(
      component: notifications.when(
        data: (data) {
          final notifications = data['body'];
          log("Notifications: $notifications");
          return RefreshIndicator(
            onRefresh: () async {
              //Refresh the notifications to get new notifications
              ref.refresh(getAllNotificationProvider(userId));
            },
            child: Container(
                height: ScreenUtil().screenHeight,
                padding: EdgeInsets.all(kPadding.w),
                child: ListView.builder(
                  itemBuilder: (ctx, index) => NoticationItem(
                      title: "${notifications[index]['title']}",
                      createdAt:
                          "${convertToAgo(notifications[index]['createdAt'])}",
                      subTitle: notifications[index]['message'],
                      icons: Icons.notification_add),
                  itemCount: notifications.length,
                )),
          );
        },
        error: (e, st) => Text("Error"),
        loading: () => LoadingPage(),
      ),
      appbar: const NavBar(
        title: "Notifications",
        showBadge: true,
      ),
      isAdmin: false,
      bottomNavBar: const GoogleButtomNavBar(showBottomNavBar: true),
    );
  }
}
