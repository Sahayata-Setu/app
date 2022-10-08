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
import 'package:auto_route/auto_route.dart' as _i26;
import 'package:flutter/material.dart' as _i27;

import '../auth/auth_check/auth_check.dart' as _i2;
import '../constant/common/splashScreen/splashScreen.dart' as _i1;
import '../features/account-settings/account-settings.dart' as _i7;
import '../features/Admin/Dashboard/adminDashboard.dart' as _i24;
import '../features/apply-for-volunteer/apply-for-volunteer.dart' as _i23;
import '../features/campaigns/campaignDetails.dart' as _i14;
import '../features/campaigns/campaignsList.dart' as _i12;
import '../features/campaigns/widgets/createCampaign.dart' as _i13;
import '../features/certifications/widgets/certificatePrint.dart' as _i22;
import '../features/change-location/change-location.dart' as _i6;
import '../features/change-password/change-password.dart' as _i5;
import '../features/donations/Dontations.dart' as _i15;
import '../features/donations/widgets/addDonations.dart' as _i16;
import '../features/donations/widgets/donationDetails.data.dart' as _i17;
import '../features/homepage/homepage.dart' as _i4;
import '../features/login/login.dart' as _i8;
import '../features/message/message.dart' as _i10;
import '../features/message/messageDetails.dart' as _i25;
import '../features/needs/Needs.dart' as _i18;
import '../features/needs/widgets/addNeed.dart' as _i19;
import '../features/needs/widgets/needDetail.data.dart' as _i20;
import '../features/notifications/notifications.dart' as _i11;
import '../features/profile/user-profile.dart' as _i21;
import '../features/search-page/search-page.dart' as _i9;
import '../features/signup/SignUp.dart' as _i3;

class AppRouter extends _i26.RootStackRouter {
  AppRouter([_i27.GlobalKey<_i27.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i26.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    AuthCheckWidgetRoute.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.AuthCheckWidget());
    },
    SignupRoute.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.Signup());
    },
    HomePageRoute.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomePage());
    },
    ChangePasswordRoute.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ChangePassword());
    },
    ChangeLocationRoute.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ChangeLocation());
    },
    AccountSettingsRoute.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.AccountSettings());
    },
    LoginRoute.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.Login());
    },
    SearchPageRoute.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.SearchPage());
    },
    MessageRoute.name: (routeData) {
      final args = routeData.argsAs<MessageRouteArgs>(
          orElse: () => const MessageRouteArgs());
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: _i10.Message(key: args.key));
    },
    NotificationsRoute.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.Notifications());
    },
    CampaignsListRoute.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: _i12.CampaignsList());
    },
    CreateCampaignRoute.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.CreateCampaign());
    },
    CampiagnDetailsRoute.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.CampiagnDetails());
    },
    DontaionsRoute.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.Dontaions());
    },
    AddDontaionRoute.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.AddDontaion());
    },
    DonationDetailDataRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<DonationDetailDataRouteArgs>(
          orElse: () => DonationDetailDataRouteArgs(id: pathParams.get('id')));
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i17.DonationDetailData(key: args.key, id: args.id));
    },
    NeedsRoute.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.Needs());
    },
    AddRequestRoute.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.AddRequest());
    },
    NeedDetailDataRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<NeedDetailDataRouteArgs>(
          orElse: () => NeedDetailDataRouteArgs(id: pathParams.get('id')));
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i20.NeedDetailData(key: args.key, id: args.id));
    },
    UserProfileRoute.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i21.UserProfile());
    },
    CertificatePrintRoute.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: _i22.CertificatePrint());
    },
    ApplyForVolunteerRoute.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i23.ApplyForVolunteer());
    },
    AdminDashboardRoute.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i24.AdminDashboard());
    },
    MessageDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MessageDetailsRouteArgs>(
          orElse: () => MessageDetailsRouteArgs(
              receiverName: pathParams.getString('receiverName'),
              receiverId: pathParams.getString('receiverId')));
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i25.MessageDetails(
              key: args.key,
              receiverName: args.receiverName,
              receiverId: args.receiverId));
    }
  };

  @override
  List<_i26.RouteConfig> get routes => [
        _i26.RouteConfig(SplashScreenRoute.name, path: '/splash'),
        _i26.RouteConfig(AuthCheckWidgetRoute.name, path: '/'),
        _i26.RouteConfig(SignupRoute.name, path: '/signup'),
        _i26.RouteConfig(HomePageRoute.name, path: '/homepage'),
        _i26.RouteConfig(ChangePasswordRoute.name, path: '/change-password'),
        _i26.RouteConfig(ChangeLocationRoute.name, path: '/change-location'),
        _i26.RouteConfig(AccountSettingsRoute.name, path: '/account-settings'),
        _i26.RouteConfig(LoginRoute.name, path: '/login'),
        _i26.RouteConfig(SearchPageRoute.name, path: '/search'),
        _i26.RouteConfig(MessageRoute.name, path: '/messages'),
        _i26.RouteConfig(NotificationsRoute.name, path: '/notifications'),
        _i26.RouteConfig(CampaignsListRoute.name, path: '/campaigns'),
        _i26.RouteConfig(CreateCampaignRoute.name, path: '/createCampaign'),
        _i26.RouteConfig(CampiagnDetailsRoute.name, path: '/campaigns/:id'),
        _i26.RouteConfig(DontaionsRoute.name, path: '/donations/:category'),
        _i26.RouteConfig(AddDontaionRoute.name, path: '/createDonation'),
        _i26.RouteConfig(DonationDetailDataRoute.name,
            path: '/donations-details/:id'),
        _i26.RouteConfig(NeedsRoute.name, path: '/needs/:category'),
        _i26.RouteConfig(AddRequestRoute.name, path: '/createNeed'),
        _i26.RouteConfig(NeedDetailDataRoute.name, path: '/needs/details/:id'),
        _i26.RouteConfig(UserProfileRoute.name, path: '/user-profile'),
        _i26.RouteConfig(CertificatePrintRoute.name,
            path: '/certificatePreview'),
        _i26.RouteConfig(ApplyForVolunteerRoute.name, path: '/apply-volunteer'),
        _i26.RouteConfig(AdminDashboardRoute.name, path: '/admin-dashboard'),
        _i26.RouteConfig(MessageDetailsRoute.name,
            path: '/message/:receiverName/:receiverId')
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i26.PageRouteInfo<void> {
  const SplashScreenRoute() : super(SplashScreenRoute.name, path: '/splash');

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.AuthCheckWidget]
class AuthCheckWidgetRoute extends _i26.PageRouteInfo<void> {
  const AuthCheckWidgetRoute() : super(AuthCheckWidgetRoute.name, path: '/');

  static const String name = 'AuthCheckWidgetRoute';
}

/// generated route for
/// [_i3.Signup]
class SignupRoute extends _i26.PageRouteInfo<void> {
  const SignupRoute() : super(SignupRoute.name, path: '/signup');

  static const String name = 'SignupRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomePageRoute extends _i26.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/homepage');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i5.ChangePassword]
class ChangePasswordRoute extends _i26.PageRouteInfo<void> {
  const ChangePasswordRoute()
      : super(ChangePasswordRoute.name, path: '/change-password');

  static const String name = 'ChangePasswordRoute';
}

/// generated route for
/// [_i6.ChangeLocation]
class ChangeLocationRoute extends _i26.PageRouteInfo<void> {
  const ChangeLocationRoute()
      : super(ChangeLocationRoute.name, path: '/change-location');

  static const String name = 'ChangeLocationRoute';
}

/// generated route for
/// [_i7.AccountSettings]
class AccountSettingsRoute extends _i26.PageRouteInfo<void> {
  const AccountSettingsRoute()
      : super(AccountSettingsRoute.name, path: '/account-settings');

  static const String name = 'AccountSettingsRoute';
}

/// generated route for
/// [_i8.Login]
class LoginRoute extends _i26.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i9.SearchPage]
class SearchPageRoute extends _i26.PageRouteInfo<void> {
  const SearchPageRoute() : super(SearchPageRoute.name, path: '/search');

  static const String name = 'SearchPageRoute';
}

/// generated route for
/// [_i10.Message]
class MessageRoute extends _i26.PageRouteInfo<MessageRouteArgs> {
  MessageRoute({_i27.Key? key})
      : super(MessageRoute.name,
            path: '/messages', args: MessageRouteArgs(key: key));

  static const String name = 'MessageRoute';
}

class MessageRouteArgs {
  const MessageRouteArgs({this.key});

  final _i27.Key? key;

  @override
  String toString() {
    return 'MessageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i11.Notifications]
class NotificationsRoute extends _i26.PageRouteInfo<void> {
  const NotificationsRoute()
      : super(NotificationsRoute.name, path: '/notifications');

  static const String name = 'NotificationsRoute';
}

/// generated route for
/// [_i12.CampaignsList]
class CampaignsListRoute extends _i26.PageRouteInfo<void> {
  const CampaignsListRoute()
      : super(CampaignsListRoute.name, path: '/campaigns');

  static const String name = 'CampaignsListRoute';
}

/// generated route for
/// [_i13.CreateCampaign]
class CreateCampaignRoute extends _i26.PageRouteInfo<void> {
  const CreateCampaignRoute()
      : super(CreateCampaignRoute.name, path: '/createCampaign');

  static const String name = 'CreateCampaignRoute';
}

/// generated route for
/// [_i14.CampiagnDetails]
class CampiagnDetailsRoute extends _i26.PageRouteInfo<void> {
  const CampiagnDetailsRoute()
      : super(CampiagnDetailsRoute.name, path: '/campaigns/:id');

  static const String name = 'CampiagnDetailsRoute';
}

/// generated route for
/// [_i15.Dontaions]
class DontaionsRoute extends _i26.PageRouteInfo<void> {
  const DontaionsRoute()
      : super(DontaionsRoute.name, path: '/donations/:category');

  static const String name = 'DontaionsRoute';
}

/// generated route for
/// [_i16.AddDontaion]
class AddDontaionRoute extends _i26.PageRouteInfo<void> {
  const AddDontaionRoute()
      : super(AddDontaionRoute.name, path: '/createDonation');

  static const String name = 'AddDontaionRoute';
}

/// generated route for
/// [_i17.DonationDetailData]
class DonationDetailDataRoute
    extends _i26.PageRouteInfo<DonationDetailDataRouteArgs> {
  DonationDetailDataRoute({_i27.Key? key, dynamic id})
      : super(DonationDetailDataRoute.name,
            path: '/donations-details/:id',
            args: DonationDetailDataRouteArgs(key: key, id: id),
            rawPathParams: {'id': id});

  static const String name = 'DonationDetailDataRoute';
}

class DonationDetailDataRouteArgs {
  const DonationDetailDataRouteArgs({this.key, this.id});

  final _i27.Key? key;

  final dynamic id;

  @override
  String toString() {
    return 'DonationDetailDataRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i18.Needs]
class NeedsRoute extends _i26.PageRouteInfo<void> {
  const NeedsRoute() : super(NeedsRoute.name, path: '/needs/:category');

  static const String name = 'NeedsRoute';
}

/// generated route for
/// [_i19.AddRequest]
class AddRequestRoute extends _i26.PageRouteInfo<void> {
  const AddRequestRoute() : super(AddRequestRoute.name, path: '/createNeed');

  static const String name = 'AddRequestRoute';
}

/// generated route for
/// [_i20.NeedDetailData]
class NeedDetailDataRoute extends _i26.PageRouteInfo<NeedDetailDataRouteArgs> {
  NeedDetailDataRoute({_i27.Key? key, dynamic id})
      : super(NeedDetailDataRoute.name,
            path: '/needs/details/:id',
            args: NeedDetailDataRouteArgs(key: key, id: id),
            rawPathParams: {'id': id});

  static const String name = 'NeedDetailDataRoute';
}

class NeedDetailDataRouteArgs {
  const NeedDetailDataRouteArgs({this.key, this.id});

  final _i27.Key? key;

  final dynamic id;

  @override
  String toString() {
    return 'NeedDetailDataRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i21.UserProfile]
class UserProfileRoute extends _i26.PageRouteInfo<void> {
  const UserProfileRoute()
      : super(UserProfileRoute.name, path: '/user-profile');

  static const String name = 'UserProfileRoute';
}

/// generated route for
/// [_i22.CertificatePrint]
class CertificatePrintRoute extends _i26.PageRouteInfo<void> {
  const CertificatePrintRoute()
      : super(CertificatePrintRoute.name, path: '/certificatePreview');

  static const String name = 'CertificatePrintRoute';
}

/// generated route for
/// [_i23.ApplyForVolunteer]
class ApplyForVolunteerRoute extends _i26.PageRouteInfo<void> {
  const ApplyForVolunteerRoute()
      : super(ApplyForVolunteerRoute.name, path: '/apply-volunteer');

  static const String name = 'ApplyForVolunteerRoute';
}

/// generated route for
/// [_i24.AdminDashboard]
class AdminDashboardRoute extends _i26.PageRouteInfo<void> {
  const AdminDashboardRoute()
      : super(AdminDashboardRoute.name, path: '/admin-dashboard');

  static const String name = 'AdminDashboardRoute';
}

/// generated route for
/// [_i25.MessageDetails]
class MessageDetailsRoute extends _i26.PageRouteInfo<MessageDetailsRouteArgs> {
  MessageDetailsRoute(
      {_i27.Key? key, required String receiverName, required String receiverId})
      : super(MessageDetailsRoute.name,
            path: '/message/:receiverName/:receiverId',
            args: MessageDetailsRouteArgs(
                key: key, receiverName: receiverName, receiverId: receiverId),
            rawPathParams: {
              'receiverName': receiverName,
              'receiverId': receiverId
            });

  static const String name = 'MessageDetailsRoute';
}

class MessageDetailsRouteArgs {
  const MessageDetailsRouteArgs(
      {this.key, required this.receiverName, required this.receiverId});

  final _i27.Key? key;

  final String receiverName;

  final String receiverId;

  @override
  String toString() {
    return 'MessageDetailsRouteArgs{key: $key, receiverName: $receiverName, receiverId: $receiverId}';
  }
}
