import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:donationapp/auth/auth_state/auth_state.dart';
import 'package:donationapp/auth/auth_state_notifier/auth_state_notifier.dart';
import 'package:donationapp/features/homepage/homepage.dart';
import 'package:donationapp/features/login/login.dart';
import 'package:donationapp/routes/app.router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_storage/get_storage.dart';

final getstorage = GetStorage();

class AuthCheckWidget extends ConsumerWidget {
  const AuthCheckWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AuthState>(
      authStateNotifierProvider,
      (_, next) {
        // log('next $next');
        next.map(
          authenticated: (user) {
            log("24");
            // log("${user}");
            context.router.replace(const HomePageDataRoute());
          },
          unAuthenticated: (user) {
            log("28");
            context.router.replace(const LoginRoute());
          },
          unknown: (user) {
            log('hello');
          },
        );
      },
    );
    return CircularProgressIndicator(
      backgroundColor: Colors.transparent,
      color: Colors.amber,
    );
  }
}
