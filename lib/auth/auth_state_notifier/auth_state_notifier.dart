import 'dart:developer';

import 'package:donationapp/auth/auth_state/auth_state.dart';
import 'package:donationapp/services/login/login.service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authStateNotifierProvider =
    StateNotifierProvider<AuthStateNotifier, AuthState>(
  (ref) => AuthStateNotifier(ref.read(loginService)),
);

class AuthStateNotifier extends StateNotifier<AuthState> {
  AuthStateNotifier(this.authRepository) : super(const AuthState.unknown()) {
    init();
  }

  final LoginServiceClass authRepository;
  void init() {
    // log("jhdhfh");
    authRepository.checkAuth.listen((event) {
      // log("this is event${event}");
      if (event == null) {
        state = const AuthState.unAuthenticated();
      } else {
        state = AuthState.authenticated(user: event);
      }
    });
  }

  Future<void> logout() async {
    // await authRepository.logout();
  }
}
