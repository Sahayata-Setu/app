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

import '../features/apply-for-volunteer/apply-for-volunteer.dart' as _i6;
import '../features/homepage/homepage.dart' as _i2;
import '../features/login/login.dart' as _i3;
import '../features/profile/user-profile.dart' as _i5;
import '../features/search-page/search-page.dart' as _i4;
import '../features/signup/SignUp.dart' as _i1;

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
    SearchPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SearchPage());
    },
    UserProfileRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.UserProfile());
    },
    ApplyForVolunteerRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ApplyForVolunteer());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig('/#redirect',
            path: '/', redirectTo: '/login', fullMatch: true),
        _i7.RouteConfig(SignupRoute.name, path: '/signup'),
        _i7.RouteConfig(HomePageRoute.name, path: '/homepage'),
        _i7.RouteConfig(LoginRoute.name, path: '/login'),
        _i7.RouteConfig(SearchPageRoute.name, path: '/search'),
        _i7.RouteConfig(UserProfileRoute.name, path: '/user-profile'),
        _i7.RouteConfig(ApplyForVolunteerRoute.name, path: '/apply-volunteer')
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
/// [_i4.SearchPage]
class SearchPageRoute extends _i7.PageRouteInfo<void> {
  const SearchPageRoute() : super(SearchPageRoute.name, path: '/search');

  static const String name = 'SearchPageRoute';
}

/// generated route for
/// [_i5.UserProfile]
class UserProfileRoute extends _i7.PageRouteInfo<void> {
  const UserProfileRoute()
      : super(UserProfileRoute.name, path: '/user-profile');

  static const String name = 'UserProfileRoute';
}

/// generated route for
/// [_i6.ApplyForVolunteer]
class ApplyForVolunteerRoute extends _i7.PageRouteInfo<void> {
  const ApplyForVolunteerRoute()
      : super(ApplyForVolunteerRoute.name, path: '/apply-volunteer');

  static const String name = 'ApplyForVolunteerRoute';
}
