// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../features/homepage/homepage.dart' as _i2;
import '../features/login/login.dart' as _i3;
import '../features/message/message.dart' as _i4;
import '../features/notifications/notifications.dart' as _i5;
import '../features/signup/SignUp.dart' as _i1;
import '../features/user-profile/user-profile.dart' as _i6;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SignupRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.Signup());
    },
    HomePageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    LoginRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.Login());
    },
    MessageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.Message());
    },
    NotificationsRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.Notifications());
    },
    User_ProfileRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.User_Profile());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig('/#redirect',
            path: '/', redirectTo: '/homepage', fullMatch: true),
        _i7.RouteConfig(SignupRoute.name, path: '/signup'),
        _i7.RouteConfig(HomePageRoute.name, path: '/homepage'),
        _i7.RouteConfig(LoginRoute.name, path: '/login'),
        _i7.RouteConfig(MessageRoute.name, path: '/message'),
        _i7.RouteConfig(NotificationsRoute.name, path: '/notifications'),
        _i7.RouteConfig(User_ProfileRoute.name, path: '/user-profile')
      ];
}

/// generated route for
/// [_i1.Signup]
class SignupRoute extends _i7.PageRouteInfo<void> {
  const SignupRoute() : super(SignupRoute.name, path: '/signup');

  static const String name = 'SignupRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomePageRoute extends _i7.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/homepage');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i3.Login]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i4.Message]
class MessageRoute extends _i7.PageRouteInfo<void> {
  const MessageRoute() : super(MessageRoute.name, path: '/message');

  static const String name = 'MessageRoute';
}

/// generated route for
/// [_i5.Notifications]
class NotificationsRoute extends _i7.PageRouteInfo<void> {
  const NotificationsRoute()
      : super(NotificationsRoute.name, path: '/notifications');

  static const String name = 'NotificationsRoute';
}

/// generated route for
/// [_i6.User_Profile]
class User_ProfileRoute extends _i7.PageRouteInfo<void> {
  const User_ProfileRoute()
      : super(User_ProfileRoute.name, path: '/user-profile');

  static const String name = 'User_ProfileRoute';
}
