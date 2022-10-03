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
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../features/homepage/homepage.dart' as _i2;
import '../features/homepage/widgets/Donations/addDonations.dart' as _i8;
import '../features/homepage/widgets/Donations/donationDetails.dart' as _i7;
import '../features/login/login.dart' as _i3;
import '../features/message/message.dart' as _i4;
import '../features/notifications/notifications.dart' as _i5;
import '../features/signup/SignUp.dart' as _i1;
import '../features/user-profile/user-profile.dart' as _i6;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    SignupRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.Signup());
    },
    HomePageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    LoginRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.Login());
    },
    MessageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.Message());
    },
    NotificationsRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.Notifications());
    },
    User_ProfileRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.User_Profile());
    },
    Donation_DetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<Donation_DetailRouteArgs>(
          orElse: () =>
              Donation_DetailRouteArgs(donationId: pathParams.get('id')));
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i7.Donation_Detail(key: args.key, donationId: args.donationId));
    },
    AddDontaionRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.AddDontaion());
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig('/#redirect',
            path: '/', redirectTo: '/homepage', fullMatch: true),
        _i9.RouteConfig(SignupRoute.name, path: '/signup'),
        _i9.RouteConfig(HomePageRoute.name, path: '/homepage'),
        _i9.RouteConfig(LoginRoute.name, path: '/login'),
        _i9.RouteConfig(MessageRoute.name, path: '/message'),
        _i9.RouteConfig(NotificationsRoute.name, path: '/notifications'),
        _i9.RouteConfig(User_ProfileRoute.name, path: '/user-profile'),
        _i9.RouteConfig(Donation_DetailRoute.name, path: '/donations/:id'),
        _i9.RouteConfig(AddDontaionRoute.name, path: '/createDonation')
      ];
}

/// generated route for
/// [_i1.Signup]
class SignupRoute extends _i9.PageRouteInfo<void> {
  const SignupRoute() : super(SignupRoute.name, path: '/signup');

  static const String name = 'SignupRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomePageRoute extends _i9.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/homepage');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i3.Login]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i4.Message]
class MessageRoute extends _i9.PageRouteInfo<void> {
  const MessageRoute() : super(MessageRoute.name, path: '/message');

  static const String name = 'MessageRoute';
}

/// generated route for
/// [_i5.Notifications]
class NotificationsRoute extends _i9.PageRouteInfo<void> {
  const NotificationsRoute()
      : super(NotificationsRoute.name, path: '/notifications');

  static const String name = 'NotificationsRoute';
}

/// generated route for
/// [_i6.User_Profile]
class User_ProfileRoute extends _i9.PageRouteInfo<void> {
  const User_ProfileRoute()
      : super(User_ProfileRoute.name, path: '/user-profile');

  static const String name = 'User_ProfileRoute';
}

/// generated route for
/// [_i7.Donation_Detail]
class Donation_DetailRoute extends _i9.PageRouteInfo<Donation_DetailRouteArgs> {
  Donation_DetailRoute({_i10.Key? key, dynamic donationId})
      : super(Donation_DetailRoute.name,
            path: '/donations/:id',
            args: Donation_DetailRouteArgs(key: key, donationId: donationId),
            rawPathParams: {'id': donationId});

  static const String name = 'Donation_DetailRoute';
}

class Donation_DetailRouteArgs {
  const Donation_DetailRouteArgs({this.key, this.donationId});

  final _i10.Key? key;

  final dynamic donationId;

  @override
  String toString() {
    return 'Donation_DetailRouteArgs{key: $key, donationId: $donationId}';
  }
}

/// generated route for
/// [_i8.AddDontaion]
class AddDontaionRoute extends _i9.PageRouteInfo<void> {
  const AddDontaionRoute()
      : super(AddDontaionRoute.name, path: '/createDonation');

  static const String name = 'AddDontaionRoute';
}
