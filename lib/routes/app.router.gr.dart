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
import 'package:auto_route/auto_route.dart' as _i18;
import 'package:flutter/material.dart' as _i19;

import '../auth/auth_check/auth_check.dart' as _i1;
import '../features/account-settings/account-settings.dart' as _i6;
import '../features/Admin/Dashboard/adminDashboard.dart' as _i17;
import '../features/apply-for-volunteer/apply-for-volunteer.dart' as _i16;
import '../features/campaigns/campaignDetails.dart' as _i12;
import '../features/campaigns/campaignsList.dart' as _i11;
import '../features/change-location/change-location.dart' as _i5;
import '../features/change-password/change-password.dart' as _i4;
import '../features/donations/Dontations.dart' as _i13;
import '../features/donations/widgets/donationDetails.data.dart' as _i14;
import '../features/homepage/homepage-data.dart' as _i3;
import '../features/login/login.dart' as _i7;
import '../features/message/message.dart' as _i9;
import '../features/notifications/notifications.dart' as _i10;
import '../features/profile/user-profile.dart' as _i15;
import '../features/search-page/search-page.dart' as _i8;
import '../features/signup/SignUp.dart' as _i2;

class AppRouter extends _i18.RootStackRouter {
  AppRouter([_i19.GlobalKey<_i19.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i18.PageFactory> pagesMap = {
    AuthCheckWidgetRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AuthCheckWidget());
    },
    SignupRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.Signup());
    },
    HomePageDataRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomePageData());
    },
    ChangePasswordRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ChangePassword());
    },
    ChangeLocationRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ChangeLocation());
    },
    AccountSettingsRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.AccountSettings());
    },
    LoginRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.Login());
    },
    SearchPageRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.SearchPage());
    },
    MessageRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: _i9.Message());
    },
    NotificationsRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.Notifications());
    },
    CampaignsListRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: _i11.CampaignsList());
    },
    CampiagnDetailsRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.CampiagnDetails());
    },
    DontaionsRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.Dontaions());
    },
    DonationDetailDataRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<DonationDetailDataRouteArgs>(
          orElse: () => DonationDetailDataRouteArgs(id: pathParams.get('id')));
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i14.DonationDetailData(key: args.key, id: args.id));
    },
    UserProfileRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: _i15.UserProfile());
    },
    ApplyForVolunteerRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.ApplyForVolunteer());
    },
    AdminDashboardRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.AdminDashboard());
    }
  };

  @override
  List<_i18.RouteConfig> get routes => [
        _i18.RouteConfig(AuthCheckWidgetRoute.name, path: '/'),
        _i18.RouteConfig(SignupRoute.name, path: '/signup'),
        _i18.RouteConfig(HomePageDataRoute.name, path: '/homepage'),
        _i18.RouteConfig(ChangePasswordRoute.name, path: '/change-password'),
        _i18.RouteConfig(ChangeLocationRoute.name, path: '/change-location'),
        _i18.RouteConfig(AccountSettingsRoute.name, path: '/account-settings'),
        _i18.RouteConfig(LoginRoute.name, path: '/login'),
        _i18.RouteConfig(SearchPageRoute.name, path: '/search'),
        _i18.RouteConfig(MessageRoute.name, path: '/messages'),
        _i18.RouteConfig(NotificationsRoute.name, path: '/notifications'),
        _i18.RouteConfig(CampaignsListRoute.name, path: '/campaigns'),
        _i18.RouteConfig(CampiagnDetailsRoute.name, path: '/campaigns/:id'),
        _i18.RouteConfig(DontaionsRoute.name, path: '/donations/:category'),
        _i18.RouteConfig(DonationDetailDataRoute.name,
            path: '/donations-details/:id'),
        _i18.RouteConfig(UserProfileRoute.name, path: '/user-profile'),
        _i18.RouteConfig(ApplyForVolunteerRoute.name, path: '/apply-volunteer'),
        _i18.RouteConfig(AdminDashboardRoute.name, path: '/admin-dashboard')
      ];
}

/// generated route for
/// [_i1.AuthCheckWidget]
class AuthCheckWidgetRoute extends _i18.PageRouteInfo<void> {
  const AuthCheckWidgetRoute() : super(AuthCheckWidgetRoute.name, path: '/');

  static const String name = 'AuthCheckWidgetRoute';
}

/// generated route for
/// [_i2.Signup]
class SignupRoute extends _i18.PageRouteInfo<void> {
  const SignupRoute() : super(SignupRoute.name, path: '/signup');

  static const String name = 'SignupRoute';
}

/// generated route for
/// [_i3.HomePageData]
class HomePageDataRoute extends _i18.PageRouteInfo<void> {
  const HomePageDataRoute() : super(HomePageDataRoute.name, path: '/homepage');

  static const String name = 'HomePageDataRoute';
}

/// generated route for
/// [_i4.ChangePassword]
class ChangePasswordRoute extends _i18.PageRouteInfo<void> {
  const ChangePasswordRoute()
      : super(ChangePasswordRoute.name, path: '/change-password');

  static const String name = 'ChangePasswordRoute';
}

/// generated route for
/// [_i5.ChangeLocation]
class ChangeLocationRoute extends _i18.PageRouteInfo<void> {
  const ChangeLocationRoute()
      : super(ChangeLocationRoute.name, path: '/change-location');

  static const String name = 'ChangeLocationRoute';
}

/// generated route for
/// [_i6.AccountSettings]
class AccountSettingsRoute extends _i18.PageRouteInfo<void> {
  const AccountSettingsRoute()
      : super(AccountSettingsRoute.name, path: '/account-settings');

  static const String name = 'AccountSettingsRoute';
}

/// generated route for
/// [_i7.Login]
class LoginRoute extends _i18.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i8.SearchPage]
class SearchPageRoute extends _i18.PageRouteInfo<void> {
  const SearchPageRoute() : super(SearchPageRoute.name, path: '/search');

  static const String name = 'SearchPageRoute';
}

/// generated route for
/// [_i9.Message]
class MessageRoute extends _i18.PageRouteInfo<void> {
  const MessageRoute() : super(MessageRoute.name, path: '/messages');

  static const String name = 'MessageRoute';
}

/// generated route for
/// [_i10.Notifications]
class NotificationsRoute extends _i18.PageRouteInfo<void> {
  const NotificationsRoute()
      : super(NotificationsRoute.name, path: '/notifications');

  static const String name = 'NotificationsRoute';
}

/// generated route for
/// [_i11.CampaignsList]
class CampaignsListRoute extends _i18.PageRouteInfo<void> {
  const CampaignsListRoute()
      : super(CampaignsListRoute.name, path: '/campaigns');

  static const String name = 'CampaignsListRoute';
}

/// generated route for
/// [_i12.CampiagnDetails]
class CampiagnDetailsRoute extends _i18.PageRouteInfo<void> {
  const CampiagnDetailsRoute()
      : super(CampiagnDetailsRoute.name, path: '/campaigns/:id');

  static const String name = 'CampiagnDetailsRoute';
}

/// generated route for
/// [_i13.Dontaions]
class DontaionsRoute extends _i18.PageRouteInfo<void> {
  const DontaionsRoute()
      : super(DontaionsRoute.name, path: '/donations/:category');

  static const String name = 'DontaionsRoute';
}

/// generated route for
/// [_i14.DonationDetailData]
class DonationDetailDataRoute
    extends _i18.PageRouteInfo<DonationDetailDataRouteArgs> {
  DonationDetailDataRoute({_i19.Key? key, dynamic id})
      : super(DonationDetailDataRoute.name,
            path: '/donations-details/:id',
            args: DonationDetailDataRouteArgs(key: key, id: id),
            rawPathParams: {'id': id});

  static const String name = 'DonationDetailDataRoute';
}

class DonationDetailDataRouteArgs {
  const DonationDetailDataRouteArgs({this.key, this.id});

  final _i19.Key? key;

  final dynamic id;

  @override
  String toString() {
    return 'DonationDetailDataRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i15.UserProfile]
class UserProfileRoute extends _i18.PageRouteInfo<void> {
  const UserProfileRoute()
      : super(UserProfileRoute.name, path: '/user-profile');

  static const String name = 'UserProfileRoute';
}

/// generated route for
/// [_i16.ApplyForVolunteer]
class ApplyForVolunteerRoute extends _i18.PageRouteInfo<void> {
  const ApplyForVolunteerRoute()
      : super(ApplyForVolunteerRoute.name, path: '/apply-volunteer');

  static const String name = 'ApplyForVolunteerRoute';
}

/// generated route for
/// [_i17.AdminDashboard]
class AdminDashboardRoute extends _i18.PageRouteInfo<void> {
  const AdminDashboardRoute()
      : super(AdminDashboardRoute.name, path: '/admin-dashboard');

  static const String name = 'AdminDashboardRoute';
}
