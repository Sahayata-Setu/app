import 'package:donationapp/routes/app.router.gr.dart';
import 'package:donationapp/utils/base-client/path.provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  // print('A bg message just showed up :  ${message.messageId}');
}

const AndroidNotificationChannel channel = AndroidNotificationChannel(
  'high_importance_channel', // id
  'High Importance Notifications', // title
  // 'This channel is used for important notifications.', // description
  importance: Importance.high,
  playSound: true,
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //initiallize path for offline cache
  await AppPathProvider.initPath();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );
  //initialized getstorage for local database
  await GetStorage.init();
  // Add this line for reiverpod
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  final appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp.router(
                //For Device Preview
                // useInheritedMediaQuery: true,
                // locale: DevicePreview.locale(context),
                // builder: DevicePreview.appBuilder,
                title: 'Donation',
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                ),
                routeInformationParser: appRouter.defaultRouteParser(),
                routerDelegate: appRouter.delegate());
          }),
    );
  }
}
