import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:donationapp/auth/auth_state/auth_state.dart';
import 'package:donationapp/auth/auth_state_notifier/auth_state_notifier.dart';
import 'package:donationapp/constant/common/splashScreen/splashScreen.dart';
import 'package:donationapp/features/homepage/homepage.dart';
import 'package:donationapp/features/login/login.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/routes/app.router.gr.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_storage/get_storage.dart';

final getstorage = GetStorage();

class AuthCheckWidget extends ConsumerWidget {
  const AuthCheckWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userRole = StorageService.getuserType();
    ref.listen<AuthState>(
      authStateNotifierProvider,
      (_, next) {
        // log('next $next');
        next.map(
          authenticated: (user) {
            // log("this is from auth${userRole}");
            log("24");
            // log("${user}");
            replaceRouteTo("/homepage", context);
            // if (userRole == 'user') {
            // } else if (userRole == 'admin') {
            //   context.router.replace(const AdminDashboardRoute());
            // }
          },
          unAuthenticated: (user) {
            log("28");
            // context.router.replace(SplashScreenRoute());
            context.router.replace(LoginRoute());
          },
          unknown: (user) {
            log('hello');
          },
        );
      },
    );
    return Container();
  }
}
