import 'package:expensetracker/main_common.dart';
import 'package:expensetracker/routes/app.router.gr.dart';
import 'package:expensetracker/utils/base-client/path.provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';

void main() async {
  // flavorConfigProvider = StateProvider((ref) => config);
  WidgetsFlutterBinding.ensureInitialized();
  //initiallize path for offline cache
  await AppPathProvider.initPath();

  //initialized getstorage for local database
  await GetStorage.init();

  // Add this line for reiverpod
  runApp(ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends ConsumerWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  final appRouter = AppRouter();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // SystemChrome.setSystemUIOverlayStyle(
    //     SystemUiOverlayStyle(statusBarColor: Colors.red));
    FlutterStatusbarcolor.setStatusBarColor(Colors.amber);
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
              title: ref.watch(flavorConfigProvider).appTitle,
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              routeInformationParser: appRouter.defaultRouteParser(),
              routerDelegate: appRouter.delegate());
        });
  }
}
