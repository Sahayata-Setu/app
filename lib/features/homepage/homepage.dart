import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/GoogleButtomNavBar/GoogleButtomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/loading/loadingPage.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/Admin/add-preferred-locations/store/add-preferred.store.dart';
import 'package:donationapp/features/donations/widgets/categoriesTab.dart';
import 'package:donationapp/features/homepage/widgets/campaigns/campaign.dart';
import 'package:donationapp/features/homepage/widgets/preferred-locations.dart';
import 'package:donationapp/main.dart';
import 'package:donationapp/store/message/message.store.dart';
import 'package:donationapp/utils/store-service/language.store.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  String appToken = "";

  @override
  void initState() {
    super.initState();
    FirebaseMessaging _firebase = FirebaseMessaging.instance;
    _firebase.getToken().then((value) {
      setState(() {
        appToken = value.toString();
      });
    });
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      _firebase.getToken().then((value) {});
      print("This is from homepage");

// 634070288ec90f310b587234
      RemoteNotification? notification = message.notification;
      final recieverId = ref.watch(recieverIdProvider);
      // log("recieverid: ${recieverId}");
      if (notification?.title == "New Message") {
        // ref.refresh(initializeMessage(recieverId));
      }

      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                channel.id,
                channel.name,
                color: Colors.blue,
                playSound: true,
                icon: '@mipmap/ic_launcher',
              ),
            ));
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null) {
        if (notification.title == "WINNER ANNOUNCEMNT") {}
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return App(
      component: Container(
        //height: ,
        // margin: EdgeInsets.symmetric(vertical: kPadding),
        // padding: EdgeInsets.all(kPadding),
        color: backgroundColor,
        //  height: ScreenUtil().screenHeight + kPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Campaigns(),
            CategoriesTab(),
            PreferredLocations()
            //CustomTabBar()
            // DonationsHome(), NeedsHome()
          ],
        ),
      ),
      //),
      appbar: NavBar(
        title: translation(context).home, //"HOME",
        showBadge: true,
      ),
      isAdmin: false,
      bottomNavBar: const GoogleButtomNavBar(showBottomNavBar: true),
    );
  }
}
