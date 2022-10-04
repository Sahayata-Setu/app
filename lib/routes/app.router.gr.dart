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
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import '../auth/auth_check/auth_check.dart' as _i1;
import '../features/account-settings/account-settings.dart' as _i6;
import '../features/apply-for-volunteer/apply-for-volunteer.dart' as _i10;
import '../features/change-location/change-location.dart' as _i5;
import '../features/change-password/change-password.dart' as _i4;
import '../features/homepage/homepage-data.dart' as _i3;
import '../features/login/login.dart' as _i7;
import '../features/profile/user-profile.dart' as _i9;
import '../features/search-page/search-page.dart' as _i8;
import '../features/signup/SignUp.dart' as _i2;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    AuthCheckWidgetRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AuthCheckWidget());
    },
    SignupRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.Signup());
    },
    HomePageDataRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomePageData());
    },
    ChangePasswordRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ChangePassword());
    },
    ChangeLocationRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ChangeLocation());
    },
    AccountSettingsRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.AccountSettings());
    },
    LoginRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.Login());
    },
    SearchPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.SearchPage());
    },
    UserProfileRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.UserProfile());
    },
    ApplyForVolunteerRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.ApplyForVolunteer());
    }
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(AuthCheckWidgetRoute.name, path: '/'),
        _i11.RouteConfig(SignupRoute.name, path: '/signup'),
        _i11.RouteConfig(HomePageDataRoute.name, path: '/homepage'),
        _i11.RouteConfig(ChangePasswordRoute.name, path: '/change-password'),
        _i11.RouteConfig(ChangeLocationRoute.name, path: '/change-location'),
        _i11.RouteConfig(AccountSettingsRoute.name, path: '/account-settings'),
        _i11.RouteConfig(LoginRoute.name, path: '/login'),
        _i11.RouteConfig(SearchPageRoute.name, path: '/search'),
        _i11.RouteConfig(UserProfileRoute.name, path: '/user-profile'),
        _i11.RouteConfig(ApplyForVolunteerRoute.name, path: '/apply-volunteer')
      ];
}

/// generated route for
/// [_i1.AuthCheckWidget]
class AuthCheckWidgetRoute extends _i11.PageRouteInfo<void> {
  const AuthCheckWidgetRoute() : super(AuthCheckWidgetRoute.name, path: '/');

  static const String name = 'AuthCheckWidgetRoute';
}

/// generated route for
/// [_i2.Signup]
class SignupRoute extends _i11.PageRouteInfo<void> {
  const SignupRoute() : super(SignupRoute.name, path: '/signup');

  static const String name = 'SignupRoute';
}

/// generated route for
/// [_i3.HomePageData]
class HomePageDataRoute extends _i11.PageRouteInfo<void> {
  const HomePageDataRoute() : super(HomePageDataRoute.name, path: '/homepage');

  static const String name = 'HomePageDataRoute';
}

/// generated route for
/// [_i4.ChangePassword]
class ChangePasswordRoute extends _i11.PageRouteInfo<void> {
  const ChangePasswordRoute()
      : super(ChangePasswordRoute.name, path: '/change-password');

  static const String name = 'ChangePasswordRoute';
}

/// generated route for
/// [_i5.ChangeLocation]
class ChangeLocationRoute extends _i11.PageRouteInfo<void> {
  const ChangeLocationRoute()
      : super(ChangeLocationRoute.name, path: '/change-location');

  static const String name = 'ChangeLocationRoute';
}

/// generated route for
/// [_i6.AccountSettings]
class AccountSettingsRoute extends _i11.PageRouteInfo<void> {
  const AccountSettingsRoute()
      : super(AccountSettingsRoute.name, path: '/account-settings');

  static const String name = 'AccountSettingsRoute';
}

/// generated route for
/// [_i7.Login]
class LoginRoute extends _i11.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i8.SearchPage]
class SearchPageRoute extends _i11.PageRouteInfo<void> {
  const SearchPageRoute() : super(SearchPageRoute.name, path: '/search');

  static const String name = 'SearchPageRoute';
}

/// generated route for
/// [_i9.UserProfile]
class UserProfileRoute extends _i11.PageRouteInfo<void> {
  const UserProfileRoute()
      : super(UserProfileRoute.name, path: '/user-profile');

  static const String name = 'UserProfileRoute';
}

/// generated route for
/// [_i10.ApplyForVolunteer]
class ApplyForVolunteerRoute extends _i11.PageRouteInfo<void> {
  const ApplyForVolunteerRoute()
      : super(ApplyForVolunteerRoute.name, path: '/apply-volunteer');

  static const String name = 'ApplyForVolunteerRoute';
}
