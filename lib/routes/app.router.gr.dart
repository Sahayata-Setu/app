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
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/cupertino.dart' as _i16;
import 'package:flutter/material.dart' as _i15;

import '../auth/auth_check/auth_check.dart' as _i1;
import '../features/apply-for-volunteer/apply-for-volunteer.dart' as _i13;
import '../features/certifications/certificates.dart' as _i9;
import '../features/donations/widgets/addDonations.dart' as _i8;
import '../features/donations/widgets/donationDetails.dart' as _i6;
import '../features/homepage/homepage.dart' as _i10;
import '../features/login/login.dart' as _i3;
import '../features/message/message.dart' as _i4;
import '../features/needs/widgets/addNeed.dart' as _i7;
import '../features/notifications/notifications.dart' as _i5;
import '../features/profile/user-profile.dart' as _i12;
import '../features/search-page/search-page.dart' as _i11;
import '../features/signup/SignUp.dart' as _i2;

class AppRouter extends _i14.RootStackRouter {
  AppRouter([_i15.GlobalKey<_i15.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    AuthCheckWidgetRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AuthCheckWidget());
    },
    SignupRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.Signup());
    },
    LoginRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.Login());
    },
    MessageRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.Message());
    },
    NotificationsRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.Notifications());
    },
    Donation_DetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<Donation_DetailRouteArgs>(
          orElse: () =>
              Donation_DetailRouteArgs(donationId: pathParams.get('id')));
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i6.Donation_Detail(key: args.key, donationId: args.donationId));
    },
    AddRequestRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.AddRequest());
    },
    AddDontaionRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.AddDontaion());
    },
    CertificatesRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.Certificates());
    },
    HomePageRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.HomePage());
    },
    SearchPageRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.SearchPage());
    },
    UserProfileRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.UserProfile());
    },
    ApplyForVolunteerRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.ApplyForVolunteer());
    }
  };

  @override
  List<_i14.RouteConfig> get routes => [
        _i14.RouteConfig(AuthCheckWidgetRoute.name, path: '/'),
        _i14.RouteConfig(SignupRoute.name, path: '/signup'),
        _i14.RouteConfig(LoginRoute.name, path: '/login'),
        _i14.RouteConfig(MessageRoute.name, path: '/message'),
        _i14.RouteConfig(NotificationsRoute.name, path: '/notifications'),
        _i14.RouteConfig(Donation_DetailRoute.name, path: '/donations/:id'),
        _i14.RouteConfig(AddRequestRoute.name, path: '/createNeed'),
        _i14.RouteConfig(AddDontaionRoute.name, path: '/createDonation'),
        _i14.RouteConfig(CertificatesRoute.name, path: '/certificates'),
        _i14.RouteConfig(HomePageRoute.name, path: '/homepage'),
        _i14.RouteConfig(SearchPageRoute.name, path: '/search'),
        _i14.RouteConfig(UserProfileRoute.name, path: '/user-profile'),
        _i14.RouteConfig(ApplyForVolunteerRoute.name, path: '/apply-volunteer')
      ];
}

/// generated route for
/// [_i1.AuthCheckWidget]
class AuthCheckWidgetRoute extends _i14.PageRouteInfo<void> {
  const AuthCheckWidgetRoute() : super(AuthCheckWidgetRoute.name, path: '/');

  static const String name = 'AuthCheckWidgetRoute';
}

/// generated route for
/// [_i2.Signup]
class SignupRoute extends _i14.PageRouteInfo<void> {
  const SignupRoute() : super(SignupRoute.name, path: '/signup');

  static const String name = 'SignupRoute';
}

/// generated route for
/// [_i3.Login]
class LoginRoute extends _i14.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i4.Message]
class MessageRoute extends _i14.PageRouteInfo<void> {
  const MessageRoute() : super(MessageRoute.name, path: '/message');

  static const String name = 'MessageRoute';
}

/// generated route for
/// [_i5.Notifications]
class NotificationsRoute extends _i14.PageRouteInfo<void> {
  const NotificationsRoute()
      : super(NotificationsRoute.name, path: '/notifications');

  static const String name = 'NotificationsRoute';
}

/// generated route for
/// [_i6.Donation_Detail]
class Donation_DetailRoute
    extends _i14.PageRouteInfo<Donation_DetailRouteArgs> {
  Donation_DetailRoute({_i16.Key? key, dynamic donationId})
      : super(Donation_DetailRoute.name,
            path: '/donations/:id',
            args: Donation_DetailRouteArgs(key: key, donationId: donationId),
            rawPathParams: {'id': donationId});

  static const String name = 'Donation_DetailRoute';
}

class Donation_DetailRouteArgs {
  const Donation_DetailRouteArgs({this.key, this.donationId});

  final _i16.Key? key;

  final dynamic donationId;

  @override
  String toString() {
    return 'Donation_DetailRouteArgs{key: $key, donationId: $donationId}';
  }
}

/// generated route for
/// [_i7.AddRequest]
class AddRequestRoute extends _i14.PageRouteInfo<void> {
  const AddRequestRoute() : super(AddRequestRoute.name, path: '/createNeed');

  static const String name = 'AddRequestRoute';
}

/// generated route for
/// [_i8.AddDontaion]
class AddDontaionRoute extends _i14.PageRouteInfo<void> {
  const AddDontaionRoute()
      : super(AddDontaionRoute.name, path: '/createDonation');

  static const String name = 'AddDontaionRoute';
}

/// generated route for
/// [_i9.Certificates]
class CertificatesRoute extends _i14.PageRouteInfo<void> {
  const CertificatesRoute()
      : super(CertificatesRoute.name, path: '/certificates');

  static const String name = 'CertificatesRoute';
}

/// generated route for
/// [_i10.HomePage]
class HomePageRoute extends _i14.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/homepage');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i11.SearchPage]
class SearchPageRoute extends _i14.PageRouteInfo<void> {
  const SearchPageRoute() : super(SearchPageRoute.name, path: '/search');

  static const String name = 'SearchPageRoute';
}

/// generated route for
/// [_i12.UserProfile]
class UserProfileRoute extends _i14.PageRouteInfo<void> {
  const UserProfileRoute()
      : super(UserProfileRoute.name, path: '/user-profile');

  static const String name = 'UserProfileRoute';
}

/// generated route for
/// [_i13.ApplyForVolunteer]
class ApplyForVolunteerRoute extends _i14.PageRouteInfo<void> {
  const ApplyForVolunteerRoute()
      : super(ApplyForVolunteerRoute.name, path: '/apply-volunteer');

  static const String name = 'ApplyForVolunteerRoute';
}
