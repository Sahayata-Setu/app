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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../auth/auth_check/auth_check.dart' as _i1;
import '../features/apply-for-volunteer/apply-for-volunteer.dart' as _i7;
import '../features/homepage/homepage.dart' as _i3;
import '../features/login/login.dart' as _i4;
import '../features/profile/user-profile.dart' as _i6;
import '../features/search-page/search-page.dart' as _i5;
import '../features/signup/SignUp.dart' as _i2;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    AuthCheckWidgetRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AuthCheckWidget());
    },
    SignupRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.Signup());
    },
    HomePageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    },
    LoginRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.Login());
    },
    SearchPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SearchPage());
    },
    UserProfileRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.UserProfile());
    },
    ApplyForVolunteerRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.ApplyForVolunteer());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(AuthCheckWidgetRoute.name, path: '/'),
        _i8.RouteConfig(SignupRoute.name, path: '/signup'),
        _i8.RouteConfig(HomePageRoute.name, path: '/homepage'),
        _i8.RouteConfig(LoginRoute.name, path: '/login'),
        _i8.RouteConfig(SearchPageRoute.name, path: '/search'),
        _i8.RouteConfig(UserProfileRoute.name, path: '/user-profile'),
        _i8.RouteConfig(ApplyForVolunteerRoute.name, path: '/apply-volunteer')
      ];
}

/// generated route for
/// [_i1.AuthCheckWidget]
class AuthCheckWidgetRoute extends _i8.PageRouteInfo<void> {
  const AuthCheckWidgetRoute() : super(AuthCheckWidgetRoute.name, path: '/');

  static const String name = 'AuthCheckWidgetRoute';
}

/// generated route for
/// [_i2.Signup]
class SignupRoute extends _i8.PageRouteInfo<void> {
  const SignupRoute() : super(SignupRoute.name, path: '/signup');

  static const String name = 'SignupRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomePageRoute extends _i8.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/homepage');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i4.Login]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i5.SearchPage]
class SearchPageRoute extends _i8.PageRouteInfo<void> {
  const SearchPageRoute() : super(SearchPageRoute.name, path: '/search');

  static const String name = 'SearchPageRoute';
}

/// generated route for
/// [_i6.UserProfile]
class UserProfileRoute extends _i8.PageRouteInfo<void> {
  const UserProfileRoute()
      : super(UserProfileRoute.name, path: '/user-profile');

  static const String name = 'UserProfileRoute';
}

/// generated route for
/// [_i7.ApplyForVolunteer]
class ApplyForVolunteerRoute extends _i8.PageRouteInfo<void> {
  const ApplyForVolunteerRoute()
      : super(ApplyForVolunteerRoute.name, path: '/apply-volunteer');

  static const String name = 'ApplyForVolunteerRoute';
}
