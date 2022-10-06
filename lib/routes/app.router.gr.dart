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
import 'package:auto_route/auto_route.dart' as _i22;
import 'package:flutter/material.dart' as _i23;

import '../auth/auth_check/auth_check.dart' as _i1;
import '../features/account-settings/account-settings.dart' as _i6;
import '../features/Admin/Dashboard/adminDashboard.dart' as _i21;
import '../features/apply-for-volunteer/apply-for-volunteer.dart' as _i20;
import '../features/campaigns/campaignDetails.dart' as _i12;
import '../features/campaigns/campaignsList.dart' as _i11;
import '../features/change-location/change-location.dart' as _i5;
import '../features/change-password/change-password.dart' as _i4;
import '../features/donations/Dontations.dart' as _i13;
import '../features/donations/widgets/addDonations.dart' as _i14;
import '../features/donations/widgets/donationDetails.dart' as _i15;
import '../features/homepage/homepage.dart' as _i3;
import '../features/login/login.dart' as _i7;
import '../features/message/message.dart' as _i9;
import '../features/needs/Needs.dart' as _i16;
import '../features/needs/widgets/addNeed.dart' as _i17;
import '../features/needs/widgets/needDetail.dart' as _i18;
import '../features/notifications/notifications.dart' as _i10;
import '../features/profile/user-profile.dart' as _i19;
import '../features/search-page/search-page.dart' as _i8;
import '../features/signup/SignUp.dart' as _i2;

class AppRouter extends _i22.RootStackRouter {
  AppRouter([_i23.GlobalKey<_i23.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i22.PageFactory> pagesMap = {
    AuthCheckWidgetRoute.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AuthCheckWidget());
    },
    SignupRoute.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.Signup());
    },
    HomePageRoute.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.HomePage());
    },
    ChangePasswordRoute.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ChangePassword());
    },
    ChangeLocationRoute.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ChangeLocation());
    },
    AccountSettingsRoute.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.AccountSettings());
    },
    LoginRoute.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.Login());
    },
    SearchPageRoute.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.SearchPage());
    },
    MessageRoute.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
          routeData: routeData, child: _i9.Message());
    },
    NotificationsRoute.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.Notifications());
    },
    CampaignsListRoute.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
          routeData: routeData, child: _i11.CampaignsList());
    },
    CampiagnDetailsRoute.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.CampiagnDetails());
    },
    DontaionsRoute.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.Dontaions());
    },
    AddDontaionRoute.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.AddDontaion());
    },
    Donation_DetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<Donation_DetailRouteArgs>(
          orElse: () =>
              Donation_DetailRouteArgs(donationId: pathParams.get('id')));
      return _i22.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i15.Donation_Detail(key: args.key, donationId: args.donationId));
    },
    NeedsRoute.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.Needs());
    },
    AddRequestRoute.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.AddRequest());
    },
    NeedDetailRoute.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.NeedDetail());
    },
    UserProfileRoute.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
          routeData: routeData, child: _i19.UserProfile());
    },
    ApplyForVolunteerRoute.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i20.ApplyForVolunteer());
    },
    AdminDashboardRoute.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i21.AdminDashboard());
    }
  };

  @override
  List<_i22.RouteConfig> get routes => [
        _i22.RouteConfig(AuthCheckWidgetRoute.name, path: '/'),
        _i22.RouteConfig(SignupRoute.name, path: '/signup'),
        _i22.RouteConfig(HomePageRoute.name, path: '/homepage'),
        _i22.RouteConfig(ChangePasswordRoute.name, path: '/change-password'),
        _i22.RouteConfig(ChangeLocationRoute.name, path: '/change-location'),
        _i22.RouteConfig(AccountSettingsRoute.name, path: '/account-settings'),
        _i22.RouteConfig(LoginRoute.name, path: '/login'),
        _i22.RouteConfig(SearchPageRoute.name, path: '/search'),
        _i22.RouteConfig(MessageRoute.name, path: '/messages'),
        _i22.RouteConfig(NotificationsRoute.name, path: '/notifications'),
        _i22.RouteConfig(CampaignsListRoute.name, path: '/campaigns'),
        _i22.RouteConfig(CampiagnDetailsRoute.name, path: '/campaigns/:id'),
        _i22.RouteConfig(DontaionsRoute.name, path: '/donations/:category'),
        _i22.RouteConfig(AddDontaionRoute.name, path: '/createDonation'),
        _i22.RouteConfig(Donation_DetailRoute.name,
            path: '/donations/details/:id'),
        _i22.RouteConfig(NeedsRoute.name, path: '/needs/:category'),
        _i22.RouteConfig(AddRequestRoute.name, path: '/createNeed'),
        _i22.RouteConfig(NeedDetailRoute.name, path: '/needs/details/:id'),
        _i22.RouteConfig(UserProfileRoute.name, path: '/user-profile'),
        _i22.RouteConfig(ApplyForVolunteerRoute.name, path: '/apply-volunteer'),
        _i22.RouteConfig(AdminDashboardRoute.name, path: '/admin-dashboard')
      ];
}

/// generated route for
/// [_i1.AuthCheckWidget]
class AuthCheckWidgetRoute extends _i22.PageRouteInfo<void> {
  const AuthCheckWidgetRoute() : super(AuthCheckWidgetRoute.name, path: '/');

  static const String name = 'AuthCheckWidgetRoute';
}

/// generated route for
/// [_i2.Signup]
class SignupRoute extends _i22.PageRouteInfo<void> {
  const SignupRoute() : super(SignupRoute.name, path: '/signup');

  static const String name = 'SignupRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomePageRoute extends _i22.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/homepage');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i4.ChangePassword]
class ChangePasswordRoute extends _i22.PageRouteInfo<void> {
  const ChangePasswordRoute()
      : super(ChangePasswordRoute.name, path: '/change-password');

  static const String name = 'ChangePasswordRoute';
}

/// generated route for
/// [_i5.ChangeLocation]
class ChangeLocationRoute extends _i22.PageRouteInfo<void> {
  const ChangeLocationRoute()
      : super(ChangeLocationRoute.name, path: '/change-location');

  static const String name = 'ChangeLocationRoute';
}

/// generated route for
/// [_i6.AccountSettings]
class AccountSettingsRoute extends _i22.PageRouteInfo<void> {
  const AccountSettingsRoute()
      : super(AccountSettingsRoute.name, path: '/account-settings');

  static const String name = 'AccountSettingsRoute';
}

/// generated route for
/// [_i7.Login]
class LoginRoute extends _i22.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i8.SearchPage]
class SearchPageRoute extends _i22.PageRouteInfo<void> {
  const SearchPageRoute() : super(SearchPageRoute.name, path: '/search');

  static const String name = 'SearchPageRoute';
}

/// generated route for
/// [_i9.Message]
class MessageRoute extends _i22.PageRouteInfo<void> {
  const MessageRoute() : super(MessageRoute.name, path: '/messages');

  static const String name = 'MessageRoute';
}

/// generated route for
/// [_i10.Notifications]
class NotificationsRoute extends _i22.PageRouteInfo<void> {
  const NotificationsRoute()
      : super(NotificationsRoute.name, path: '/notifications');

  static const String name = 'NotificationsRoute';
}

/// generated route for
/// [_i11.CampaignsList]
class CampaignsListRoute extends _i22.PageRouteInfo<void> {
  const CampaignsListRoute()
      : super(CampaignsListRoute.name, path: '/campaigns');

  static const String name = 'CampaignsListRoute';
}

/// generated route for
/// [_i12.CampiagnDetails]
class CampiagnDetailsRoute extends _i22.PageRouteInfo<void> {
  const CampiagnDetailsRoute()
      : super(CampiagnDetailsRoute.name, path: '/campaigns/:id');

  static const String name = 'CampiagnDetailsRoute';
}

/// generated route for
/// [_i13.Dontaions]
class DontaionsRoute extends _i22.PageRouteInfo<void> {
  const DontaionsRoute()
      : super(DontaionsRoute.name, path: '/donations/:category');

  static const String name = 'DontaionsRoute';
}

/// generated route for
/// [_i14.AddDontaion]
class AddDontaionRoute extends _i22.PageRouteInfo<void> {
  const AddDontaionRoute()
      : super(AddDontaionRoute.name, path: '/createDonation');

  static const String name = 'AddDontaionRoute';
}

/// generated route for
/// [_i15.Donation_Detail]
class Donation_DetailRoute
    extends _i22.PageRouteInfo<Donation_DetailRouteArgs> {
  Donation_DetailRoute({_i23.Key? key, dynamic donationId})
      : super(Donation_DetailRoute.name,
            path: '/donations/details/:id',
            args: Donation_DetailRouteArgs(key: key, donationId: donationId),
            rawPathParams: {'id': donationId});

  static const String name = 'Donation_DetailRoute';
}

class Donation_DetailRouteArgs {
  const Donation_DetailRouteArgs({this.key, this.donationId});

  final _i23.Key? key;

  final dynamic donationId;

  @override
  String toString() {
    return 'Donation_DetailRouteArgs{key: $key, donationId: $donationId}';
  }
}

/// generated route for
/// [_i16.Needs]
class NeedsRoute extends _i22.PageRouteInfo<void> {
  const NeedsRoute() : super(NeedsRoute.name, path: '/needs/:category');

  static const String name = 'NeedsRoute';
}

/// generated route for
/// [_i17.AddRequest]
class AddRequestRoute extends _i22.PageRouteInfo<void> {
  const AddRequestRoute() : super(AddRequestRoute.name, path: '/createNeed');

  static const String name = 'AddRequestRoute';
}

/// generated route for
/// [_i18.NeedDetail]
class NeedDetailRoute extends _i22.PageRouteInfo<void> {
  const NeedDetailRoute()
      : super(NeedDetailRoute.name, path: '/needs/details/:id');

  static const String name = 'NeedDetailRoute';
}

/// generated route for
/// [_i19.UserProfile]
class UserProfileRoute extends _i22.PageRouteInfo<void> {
  const UserProfileRoute()
      : super(UserProfileRoute.name, path: '/user-profile');

  static const String name = 'UserProfileRoute';
}

/// generated route for
/// [_i20.ApplyForVolunteer]
class ApplyForVolunteerRoute extends _i22.PageRouteInfo<void> {
  const ApplyForVolunteerRoute()
      : super(ApplyForVolunteerRoute.name, path: '/apply-volunteer');

  static const String name = 'ApplyForVolunteerRoute';
}

/// generated route for
/// [_i21.AdminDashboard]
class AdminDashboardRoute extends _i22.PageRouteInfo<void> {
  const AdminDashboardRoute()
      : super(AdminDashboardRoute.name, path: '/admin-dashboard');

  static const String name = 'AdminDashboardRoute';
}
