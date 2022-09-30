import 'package:expensetracker/routes/app.router.gr.dart';
import 'package:expensetracker/utils/base-client/path.provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //initiallize path for offline cache
  await AppPathProvider.initPath();

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
                title: 'Broken Terminal',
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
