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
import 'package:auto_route/auto_route.dart' as _i27;
import 'package:flutter/material.dart' as _i28;

import '../auth/auth_check/auth_check.dart' as _i1;
import '../constant/common/splashScreen/splashScreen.dart' as _i2;
import '../features/account-settings/account-settings.dart' as _i7;
import '../features/Admin/Dashboard/admin-dashboard.data.dart' as _i25;
import '../features/Admin/widgets/approveVolunter.dart' as _i24;
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
import '../features/message/messageDetails.dart' as _i26;
import '../features/needs/Needs.dart' as _i18;
import '../features/needs/widgets/addNeed.dart' as _i19;
import '../features/needs/widgets/needDetail.data.dart' as _i20;
import '../features/notifications/notifications.dart' as _i11;
import '../features/profile/user-profile.dart' as _i21;
import '../features/search-page/search-page.dart' as _i9;
import '../features/signup/SignUp.dart' as _i3;

class AppRouter extends _i27.RootStackRouter {
  AppRouter([_i28.GlobalKey<_i28.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i27.PageFactory> pagesMap = {
    AuthCheckWidgetRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AuthCheckWidget());
    },
    SplashScreenRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SplashScreen());
    },
    SignupRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.Signup());
    },
    HomePageRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomePage());
    },
    ChangePasswordRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ChangePassword());
    },
    ChangeLocationRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ChangeLocation());
    },
    AccountSettingsRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.AccountSettings());
    },
    LoginRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.Login());
    },
    SearchPageRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.SearchPage());
    },
    MessageRoute.name: (routeData) {
      final args = routeData.argsAs<MessageRouteArgs>(
          orElse: () => const MessageRouteArgs());
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: _i10.Message(key: args.key));
    },
    NotificationsRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.Notifications());
    },
    CampaignsListRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: _i12.CampaignsList());
    },
    CreateCampaignRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.CreateCampaign());
    },
    CampiagnDetailsRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.CampiagnDetails());
    },
    DontaionsRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.Dontaions());
    },
    AddDontaionRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.AddDontaion());
    },
    DonationDetailDataRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<DonationDetailDataRouteArgs>(
          orElse: () => DonationDetailDataRouteArgs(id: pathParams.get('id')));
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i17.DonationDetailData(key: args.key, id: args.id));
    },
    NeedsRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.Needs());
    },
    AddRequestRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.AddRequest());
    },
    NeedDetailDataRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<NeedDetailDataRouteArgs>(
          orElse: () => NeedDetailDataRouteArgs(id: pathParams.get('id')));
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i20.NeedDetailData(key: args.key, id: args.id));
    },
    UserProfileRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i21.UserProfile());
    },
    CertificatePrintRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: _i22.CertificatePrint());
    },
    ApplyForVolunteerRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i23.ApplyForVolunteer());
    },
    ApproveVolunterRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i24.ApproveVolunter());
    },
    AdminDashBoardDataRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i25.AdminDashBoardData());
    },
    MessageDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MessageDetailsRouteArgs>(
          orElse: () => MessageDetailsRouteArgs(
              receiverName: pathParams.getString('receiverName'),
              receiverId: pathParams.getString('receiverId')));
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i26.MessageDetails(
              key: args.key,
              receiverName: args.receiverName,
              receiverId: args.receiverId));
    }
  };

  @override
  List<_i27.RouteConfig> get routes => [
        _i27.RouteConfig(AuthCheckWidgetRoute.name, path: '/'),
        _i27.RouteConfig(SplashScreenRoute.name, path: '/splash'),
        _i27.RouteConfig(SignupRoute.name, path: '/signup'),
        _i27.RouteConfig(HomePageRoute.name, path: '/homepage'),
        _i27.RouteConfig(ChangePasswordRoute.name, path: '/change-password'),
        _i27.RouteConfig(ChangeLocationRoute.name, path: '/change-location'),
        _i27.RouteConfig(AccountSettingsRoute.name, path: '/account-settings'),
        _i27.RouteConfig(LoginRoute.name, path: '/login'),
        _i27.RouteConfig(SearchPageRoute.name, path: '/search'),
        _i27.RouteConfig(MessageRoute.name, path: '/messages'),
        _i27.RouteConfig(NotificationsRoute.name, path: '/notifications'),
        _i27.RouteConfig(CampaignsListRoute.name, path: '/campaigns'),
        _i27.RouteConfig(CreateCampaignRoute.name, path: '/createCampaign'),
        _i27.RouteConfig(CampiagnDetailsRoute.name, path: '/campaigns/:id'),
        _i27.RouteConfig(DontaionsRoute.name, path: '/donations/:category'),
        _i27.RouteConfig(AddDontaionRoute.name, path: '/createDonation'),
        _i27.RouteConfig(DonationDetailDataRoute.name,
            path: '/donations-details/:id'),
        _i27.RouteConfig(NeedsRoute.name, path: '/needs/:category'),
        _i27.RouteConfig(AddRequestRoute.name, path: '/createNeed'),
        _i27.RouteConfig(NeedDetailDataRoute.name, path: '/needs/details/:id'),
        _i27.RouteConfig(UserProfileRoute.name, path: '/user-profile'),
        _i27.RouteConfig(CertificatePrintRoute.name,
            path: '/certificatePreview'),
        _i27.RouteConfig(ApplyForVolunteerRoute.name, path: '/apply-volunteer'),
        _i27.RouteConfig(ApproveVolunterRoute.name, path: '/approveVolunter'),
        _i27.RouteConfig(AdminDashBoardDataRoute.name,
            path: '/admin-dashboard'),
        _i27.RouteConfig(MessageDetailsRoute.name,
            path: '/message/:receiverName/:receiverId')
      ];
}

/// generated route for
/// [_i1.AuthCheckWidget]
class AuthCheckWidgetRoute extends _i27.PageRouteInfo<void> {
  const AuthCheckWidgetRoute() : super(AuthCheckWidgetRoute.name, path: '/');

  static const String name = 'AuthCheckWidgetRoute';
}

/// generated route for
/// [_i2.SplashScreen]
class SplashScreenRoute extends _i27.PageRouteInfo<void> {
  const SplashScreenRoute() : super(SplashScreenRoute.name, path: '/splash');

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i3.Signup]
class SignupRoute extends _i27.PageRouteInfo<void> {
  const SignupRoute() : super(SignupRoute.name, path: '/signup');

  static const String name = 'SignupRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomePageRoute extends _i27.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/homepage');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i5.ChangePassword]
class ChangePasswordRoute extends _i27.PageRouteInfo<void> {
  const ChangePasswordRoute()
      : super(ChangePasswordRoute.name, path: '/change-password');

  static const String name = 'ChangePasswordRoute';
}

/// generated route for
/// [_i6.ChangeLocation]
class ChangeLocationRoute extends _i27.PageRouteInfo<void> {
  const ChangeLocationRoute()
      : super(ChangeLocationRoute.name, path: '/change-location');

  static const String name = 'ChangeLocationRoute';
}

/// generated route for
/// [_i7.AccountSettings]
class AccountSettingsRoute extends _i27.PageRouteInfo<void> {
  const AccountSettingsRoute()
      : super(AccountSettingsRoute.name, path: '/account-settings');

  static const String name = 'AccountSettingsRoute';
}

/// generated route for
/// [_i8.Login]
class LoginRoute extends _i27.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i9.SearchPage]
class SearchPageRoute extends _i27.PageRouteInfo<void> {
  const SearchPageRoute() : super(SearchPageRoute.name, path: '/search');

  static const String name = 'SearchPageRoute';
}

/// generated route for
/// [_i10.Message]
class MessageRoute extends _i27.PageRouteInfo<MessageRouteArgs> {
  MessageRoute({_i28.Key? key})
      : super(MessageRoute.name,
            path: '/messages', args: MessageRouteArgs(key: key));

  static const String name = 'MessageRoute';
}

class MessageRouteArgs {
  const MessageRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'MessageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i11.Notifications]
class NotificationsRoute extends _i27.PageRouteInfo<void> {
  const NotificationsRoute()
      : super(NotificationsRoute.name, path: '/notifications');

  static const String name = 'NotificationsRoute';
}

/// generated route for
/// [_i12.CampaignsList]
class CampaignsListRoute extends _i27.PageRouteInfo<void> {
  const CampaignsListRoute()
      : super(CampaignsListRoute.name, path: '/campaigns');

  static const String name = 'CampaignsListRoute';
}

/// generated route for
/// [_i13.CreateCampaign]
class CreateCampaignRoute extends _i27.PageRouteInfo<void> {
  const CreateCampaignRoute()
      : super(CreateCampaignRoute.name, path: '/createCampaign');

  static const String name = 'CreateCampaignRoute';
}

/// generated route for
/// [_i14.CampiagnDetails]
class CampiagnDetailsRoute extends _i27.PageRouteInfo<void> {
  const CampiagnDetailsRoute()
      : super(CampiagnDetailsRoute.name, path: '/campaigns/:id');

  static const String name = 'CampiagnDetailsRoute';
}

/// generated route for
/// [_i15.Dontaions]
class DontaionsRoute extends _i27.PageRouteInfo<void> {
  const DontaionsRoute()
      : super(DontaionsRoute.name, path: '/donations/:category');

  static const String name = 'DontaionsRoute';
}

/// generated route for
/// [_i16.AddDontaion]
class AddDontaionRoute extends _i27.PageRouteInfo<void> {
  const AddDontaionRoute()
      : super(AddDontaionRoute.name, path: '/createDonation');

  static const String name = 'AddDontaionRoute';
}

/// generated route for
/// [_i17.DonationDetailData]
class DonationDetailDataRoute
    extends _i27.PageRouteInfo<DonationDetailDataRouteArgs> {
  DonationDetailDataRoute({_i28.Key? key, dynamic id})
      : super(DonationDetailDataRoute.name,
            path: '/donations-details/:id',
            args: DonationDetailDataRouteArgs(key: key, id: id),
            rawPathParams: {'id': id});

  static const String name = 'DonationDetailDataRoute';
}

class DonationDetailDataRouteArgs {
  const DonationDetailDataRouteArgs({this.key, this.id});

  final _i28.Key? key;

  final dynamic id;

  @override
  String toString() {
    return 'DonationDetailDataRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i18.Needs]
class NeedsRoute extends _i27.PageRouteInfo<void> {
  const NeedsRoute() : super(NeedsRoute.name, path: '/needs/:category');

  static const String name = 'NeedsRoute';
}

/// generated route for
/// [_i19.AddRequest]
class AddRequestRoute extends _i27.PageRouteInfo<void> {
  const AddRequestRoute() : super(AddRequestRoute.name, path: '/createNeed');

  static const String name = 'AddRequestRoute';
}

/// generated route for
/// [_i20.NeedDetailData]
class NeedDetailDataRoute extends _i27.PageRouteInfo<NeedDetailDataRouteArgs> {
  NeedDetailDataRoute({_i28.Key? key, dynamic id})
      : super(NeedDetailDataRoute.name,
            path: '/needs/details/:id',
            args: NeedDetailDataRouteArgs(key: key, id: id),
            rawPathParams: {'id': id});

  static const String name = 'NeedDetailDataRoute';
}

class NeedDetailDataRouteArgs {
  const NeedDetailDataRouteArgs({this.key, this.id});

  final _i28.Key? key;

  final dynamic id;

  @override
  String toString() {
    return 'NeedDetailDataRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i21.UserProfile]
class UserProfileRoute extends _i27.PageRouteInfo<void> {
  const UserProfileRoute()
      : super(UserProfileRoute.name, path: '/user-profile');

  static const String name = 'UserProfileRoute';
}

/// generated route for
/// [_i22.CertificatePrint]
class CertificatePrintRoute extends _i27.PageRouteInfo<void> {
  const CertificatePrintRoute()
      : super(CertificatePrintRoute.name, path: '/certificatePreview');

  static const String name = 'CertificatePrintRoute';
}

/// generated route for
/// [_i23.ApplyForVolunteer]
class ApplyForVolunteerRoute extends _i27.PageRouteInfo<void> {
  const ApplyForVolunteerRoute()
      : super(ApplyForVolunteerRoute.name, path: '/apply-volunteer');

  static const String name = 'ApplyForVolunteerRoute';
}

/// generated route for
/// [_i24.ApproveVolunter]
class ApproveVolunterRoute extends _i27.PageRouteInfo<void> {
  const ApproveVolunterRoute()
      : super(ApproveVolunterRoute.name, path: '/approveVolunter');

  static const String name = 'ApproveVolunterRoute';
}

/// generated route for
/// [_i25.AdminDashBoardData]
class AdminDashBoardDataRoute extends _i27.PageRouteInfo<void> {
  const AdminDashBoardDataRoute()
      : super(AdminDashBoardDataRoute.name, path: '/admin-dashboard');

  static const String name = 'AdminDashBoardDataRoute';
}

/// generated route for
/// [_i26.MessageDetails]
class MessageDetailsRoute extends _i27.PageRouteInfo<MessageDetailsRouteArgs> {
  MessageDetailsRoute(
      {_i28.Key? key, required String receiverName, required String receiverId})
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

  final _i28.Key? key;

  final String receiverName;

  final String receiverId;

  @override
  String toString() {
    return 'MessageDetailsRouteArgs{key: $key, receiverName: $receiverName, receiverId: $receiverId}';
  }
}
