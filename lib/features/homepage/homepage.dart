import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:donationapp/app.dart';
import 'package:donationapp/classes/language.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/donations/widgets/categoriesTab.dart';
import 'package:donationapp/features/homepage/widgets/campaigns/campaign.dart';
import 'package:donationapp/features/homepage/widgets/tabBar.dart';
import 'package:donationapp/features/homepage/widgets/needs/needs.dart';
import 'package:donationapp/main.dart';
import 'package:donationapp/utils/store-service/language.store.dart';
import 'package:donationapp/utils/store-service/store.service.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../main.dart';

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

      RemoteNotification? notification = message.notification;
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
        margin: EdgeInsets.symmetric(vertical: kPadding),
        // padding: EdgeInsets.all(kPadding),
        color: backgroundColor,
        //  height: ScreenUtil().screenHeight + kPadding,
        child: Column(
          children: [
            Campaigns(),
            CategoriesTab(),
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
      bottomNavBar: BottomNavBar(showBottomNavBar: true),
    );
  }
}
