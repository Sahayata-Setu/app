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
import 'package:auto_route/auto_route.dart' as _i35;
import 'package:flutter/material.dart' as _i36;

import '../auth/auth_check/auth_check.dart' as _i1;
import '../constant/common/splashScreen/splashScreen.dart' as _i2;
import '../features/account-settings/account-settings.dart' as _i8;
import '../features/Admin/Dashboard/admin-dashboard.data.dart' as _i27;
import '../features/Admin/Donations/donatedDetails.dart' as _i32;
import '../features/Admin/Donations/viewDonations.dart' as _i31;
import '../features/Admin/Requests/requestDetails.dart' as _i34;
import '../features/Admin/Requests/viewRequest.dart' as _i33;
import '../features/Admin/Users/userDetails.dart' as _i29;
import '../features/Admin/Users/viewUsers.dart' as _i28;
import '../features/Admin/widgets/approveVolunter.dart' as _i26;
import '../features/apply-for-volunteer/apply-for-volunteer.dart' as _i25;
import '../features/campaigns/campaignDetails.dart' as _i15;
import '../features/campaigns/campaignsList.dart' as _i13;
import '../features/campaigns/widgets/createCampaign.dart' as _i14;
import '../features/certifications/widgets/certificatePrint.dart' as _i24;
import '../features/change-location/change-location.dart' as _i7;
import '../features/change-password/change-password.dart' as _i6;
import '../features/donations/Dontations.dart' as _i16;
import '../features/donations/widgets/addDonations.dart' as _i17;
import '../features/donations/widgets/donationDetails.dart' as _i18;
import '../features/donations_claim/donations_claim.dart' as _i5;
import '../features/homepage/homepage.dart' as _i4;
import '../features/login/login.dart' as _i9;
import '../features/message/messageDetails.dart' as _i30;
import '../features/needs/Needs.dart' as _i19;
import '../features/needs/widgets/addNeed.dart' as _i21;
import '../features/needs/widgets/needDetail.dart' as _i22;
import '../features/new-message/all-messages.dart' as _i11;
import '../features/notifications/notifications.dart' as _i12;
import '../features/profile/user-profile.dart' as _i23;
import '../features/search-page/search-page.dart' as _i10;
import '../features/signup/SignUp.dart' as _i3;
import '../features/volunteer/volunteer.dart' as _i20;

class AppRouter extends _i35.RootStackRouter {
  AppRouter([_i36.GlobalKey<_i36.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i35.PageFactory> pagesMap = {
    AuthCheckWidgetRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.AuthCheckWidget(),
      );
    },
    SplashScreenRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.SplashScreen(),
      );
    },
    SignupRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.Signup(),
      );
    },
    HomePageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    DonationsClaimRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.DonationsClaim(),
      );
    },
    ChangePasswordRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ChangePassword(),
      );
    },
    ChangeLocationRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.ChangeLocation(),
      );
    },
    AccountSettingsRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.AccountSettings(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.Login(),
      );
    },
    SearchPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.SearchPage(),
      );
    },
    NewMessageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i11.NewMessage(),
      );
    },
    NotificationsRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.Notifications(),
      );
    },
    CampaignsListRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i13.CampaignsList(),
      );
    },
    CreateCampaignRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.CreateCampaign(),
      );
    },
    CampiagnDetailsRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.CampiagnDetails(),
      );
    },
    DontaionsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<DontaionsRouteArgs>(
          orElse: () =>
              DontaionsRouteArgs(category: pathParams.get('category')));
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i16.Dontaions(
          key: args.key,
          category: args.category,
        ),
      );
    },
    AddDontaionRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i17.AddDontaion(),
      );
    },
    DonationDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<DonationDetailRouteArgs>(
          orElse: () => DonationDetailRouteArgs(id: pathParams.get('id')));
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i18.DonationDetail(
          key: args.key,
          data: args.data,
          id: args.id,
        ),
      );
    },
    NeedsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<NeedsRouteArgs>(
          orElse: () => NeedsRouteArgs(category: pathParams.get('category')));
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i19.Needs(
          key: args.key,
          category: args.category,
        ),
      );
    },
    VolunteerRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i20.Volunteer(),
      );
    },
    AddRequestRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i21.AddRequest(),
      );
    },
    NeedDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<NeedDetailRouteArgs>(
          orElse: () => NeedDetailRouteArgs(id: pathParams.get('id')));
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i22.NeedDetail(
          key: args.key,
          data: args.data,
          id: args.id,
        ),
      );
    },
    UserProfileRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i23.UserProfile(),
      );
    },
    CertificatePrintRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i24.CertificatePrint(),
      );
    },
    ApplyForVolunteerRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i25.ApplyForVolunteer(),
      );
    },
    ApproveVolunterRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ApproveVolunterRouteArgs>(
          orElse: () => ApproveVolunterRouteArgs(id: pathParams.get('id')));
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i26.ApproveVolunter(
          key: args.key,
          id: args.id,
        ),
      );
    },
    AdminDashBoardDataRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i27.AdminDashBoardData(),
      );
    },
    ViewUsersRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i28.ViewUsers(),
      );
    },
    UserDetailsRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i29.UserDetails(),
      );
    },
    MessageDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MessageDetailsRouteArgs>(
          orElse: () => MessageDetailsRouteArgs(
                receiverName: pathParams.getString('receiverName'),
                receiverId: pathParams.getString('receiverId'),
              ));
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i30.MessageDetails(
          key: args.key,
          receiverName: args.receiverName,
          receiverId: args.receiverId,
        ),
      );
    },
    ViewDonationsRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i31.ViewDonations(),
      );
    },
    DonatedDetailsRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i32.DonatedDetails(),
      );
    },
    ViewRequestsRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i33.ViewRequests(),
      );
    },
    RequestDetailsRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i34.RequestDetails(),
      );
    },
  };

  @override
  List<_i35.RouteConfig> get routes => [
        _i35.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/view-user',
          fullMatch: true,
        ),
        _i35.RouteConfig(
          AuthCheckWidgetRoute.name,
          path: '/auth-check-widget',
        ),
        _i35.RouteConfig(
          SplashScreenRoute.name,
          path: '/splash',
        ),
        _i35.RouteConfig(
          SignupRoute.name,
          path: '/signup',
        ),
        _i35.RouteConfig(
          HomePageRoute.name,
          path: '/homepage',
        ),
        _i35.RouteConfig(
          DonationsClaimRoute.name,
          path: '/donations_claim',
        ),
        _i35.RouteConfig(
          ChangePasswordRoute.name,
          path: '/change-password',
        ),
        _i35.RouteConfig(
          ChangeLocationRoute.name,
          path: '/change-location',
        ),
        _i35.RouteConfig(
          AccountSettingsRoute.name,
          path: '/account-settings',
        ),
        _i35.RouteConfig(
          LoginRoute.name,
          path: '/login',
        ),
        _i35.RouteConfig(
          SearchPageRoute.name,
          path: '/search',
        ),
        _i35.RouteConfig(
          NewMessageRoute.name,
          path: '/messages',
        ),
        _i35.RouteConfig(
          NotificationsRoute.name,
          path: '/notifications',
        ),
        _i35.RouteConfig(
          CampaignsListRoute.name,
          path: '/campaigns',
        ),
        _i35.RouteConfig(
          CreateCampaignRoute.name,
          path: '/createCampaign',
        ),
        _i35.RouteConfig(
          CampiagnDetailsRoute.name,
          path: '/campaigns/:id',
        ),
        _i35.RouteConfig(
          DontaionsRoute.name,
          path: '/donations/:category',
        ),
        _i35.RouteConfig(
          AddDontaionRoute.name,
          path: '/createDonation',
        ),
        _i35.RouteConfig(
          DonationDetailRoute.name,
          path: '/donations-details/:id',
        ),
        _i35.RouteConfig(
          NeedsRoute.name,
          path: '/needs/:category',
        ),
        _i35.RouteConfig(
          VolunteerRoute.name,
          path: '/volunteer',
        ),
        _i35.RouteConfig(
          AddRequestRoute.name,
          path: '/createNeed',
        ),
        _i35.RouteConfig(
          NeedDetailRoute.name,
          path: '/needs/details/:id',
        ),
        _i35.RouteConfig(
          UserProfileRoute.name,
          path: '/user-profile',
        ),
        _i35.RouteConfig(
          CertificatePrintRoute.name,
          path: '/certificatePreview',
        ),
        _i35.RouteConfig(
          ApplyForVolunteerRoute.name,
          path: '/apply-volunteer',
        ),
        _i35.RouteConfig(
          ApproveVolunterRoute.name,
          path: '/approveVolunter/:id',
        ),
        _i35.RouteConfig(
          AdminDashBoardDataRoute.name,
          path: '/admin-dashboard',
        ),
        _i35.RouteConfig(
          ViewUsersRoute.name,
          path: '/view-user',
        ),
        _i35.RouteConfig(
          UserDetailsRoute.name,
          path: '/userDetails',
        ),
        _i35.RouteConfig(
          MessageDetailsRoute.name,
          path: '/message/:receiverName/:receiverId',
        ),
        _i35.RouteConfig(
          ViewDonationsRoute.name,
          path: '/donations-list',
        ),
        _i35.RouteConfig(
          DonatedDetailsRoute.name,
          path: '/donatedDetails',
        ),
        _i35.RouteConfig(
          ViewRequestsRoute.name,
          path: '/requests',
        ),
        _i35.RouteConfig(
          RequestDetailsRoute.name,
          path: '/requestDetails',
        ),
      ];
}

/// generated route for
/// [_i1.AuthCheckWidget]
class AuthCheckWidgetRoute extends _i35.PageRouteInfo<void> {
  const AuthCheckWidgetRoute()
      : super(
          AuthCheckWidgetRoute.name,
          path: '/auth-check-widget',
        );

  static const String name = 'AuthCheckWidgetRoute';
}

/// generated route for
/// [_i2.SplashScreen]
class SplashScreenRoute extends _i35.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/splash',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i3.Signup]
class SignupRoute extends _i35.PageRouteInfo<void> {
  const SignupRoute()
      : super(
          SignupRoute.name,
          path: '/signup',
        );

  static const String name = 'SignupRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomePageRoute extends _i35.PageRouteInfo<void> {
  const HomePageRoute()
      : super(
          HomePageRoute.name,
          path: '/homepage',
        );

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i5.DonationsClaim]
class DonationsClaimRoute extends _i35.PageRouteInfo<void> {
  const DonationsClaimRoute()
      : super(
          DonationsClaimRoute.name,
          path: '/donations_claim',
        );

  static const String name = 'DonationsClaimRoute';
}

/// generated route for
/// [_i6.ChangePassword]
class ChangePasswordRoute extends _i35.PageRouteInfo<void> {
  const ChangePasswordRoute()
      : super(
          ChangePasswordRoute.name,
          path: '/change-password',
        );

  static const String name = 'ChangePasswordRoute';
}

/// generated route for
/// [_i7.ChangeLocation]
class ChangeLocationRoute extends _i35.PageRouteInfo<void> {
  const ChangeLocationRoute()
      : super(
          ChangeLocationRoute.name,
          path: '/change-location',
        );

  static const String name = 'ChangeLocationRoute';
}

/// generated route for
/// [_i8.AccountSettings]
class AccountSettingsRoute extends _i35.PageRouteInfo<void> {
  const AccountSettingsRoute()
      : super(
          AccountSettingsRoute.name,
          path: '/account-settings',
        );

  static const String name = 'AccountSettingsRoute';
}

/// generated route for
/// [_i9.Login]
class LoginRoute extends _i35.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i10.SearchPage]
class SearchPageRoute extends _i35.PageRouteInfo<void> {
  const SearchPageRoute()
      : super(
          SearchPageRoute.name,
          path: '/search',
        );

  static const String name = 'SearchPageRoute';
}

/// generated route for
/// [_i11.NewMessage]
class NewMessageRoute extends _i35.PageRouteInfo<void> {
  const NewMessageRoute()
      : super(
          NewMessageRoute.name,
          path: '/messages',
        );

  static const String name = 'NewMessageRoute';
}

/// generated route for
/// [_i12.Notifications]
class NotificationsRoute extends _i35.PageRouteInfo<void> {
  const NotificationsRoute()
      : super(
          NotificationsRoute.name,
          path: '/notifications',
        );

  static const String name = 'NotificationsRoute';
}

/// generated route for
/// [_i13.CampaignsList]
class CampaignsListRoute extends _i35.PageRouteInfo<void> {
  const CampaignsListRoute()
      : super(
          CampaignsListRoute.name,
          path: '/campaigns',
        );

  static const String name = 'CampaignsListRoute';
}

/// generated route for
/// [_i14.CreateCampaign]
class CreateCampaignRoute extends _i35.PageRouteInfo<void> {
  const CreateCampaignRoute()
      : super(
          CreateCampaignRoute.name,
          path: '/createCampaign',
        );

  static const String name = 'CreateCampaignRoute';
}

/// generated route for
/// [_i15.CampiagnDetails]
class CampiagnDetailsRoute extends _i35.PageRouteInfo<void> {
  const CampiagnDetailsRoute()
      : super(
          CampiagnDetailsRoute.name,
          path: '/campaigns/:id',
        );

  static const String name = 'CampiagnDetailsRoute';
}

/// generated route for
/// [_i16.Dontaions]
class DontaionsRoute extends _i35.PageRouteInfo<DontaionsRouteArgs> {
  DontaionsRoute({
    _i36.Key? key,
    dynamic category,
  }) : super(
          DontaionsRoute.name,
          path: '/donations/:category',
          args: DontaionsRouteArgs(
            key: key,
            category: category,
          ),
          rawPathParams: {'category': category},
        );

  static const String name = 'DontaionsRoute';
}

class DontaionsRouteArgs {
  const DontaionsRouteArgs({
    this.key,
    this.category,
  });

  final _i36.Key? key;

  final dynamic category;

  @override
  String toString() {
    return 'DontaionsRouteArgs{key: $key, category: $category}';
  }
}

/// generated route for
/// [_i17.AddDontaion]
class AddDontaionRoute extends _i35.PageRouteInfo<void> {
  const AddDontaionRoute()
      : super(
          AddDontaionRoute.name,
          path: '/createDonation',
        );

  static const String name = 'AddDontaionRoute';
}

/// generated route for
/// [_i18.DonationDetail]
class DonationDetailRoute extends _i35.PageRouteInfo<DonationDetailRouteArgs> {
  DonationDetailRoute({
    _i36.Key? key,
    dynamic data,
    dynamic id,
  }) : super(
          DonationDetailRoute.name,
          path: '/donations-details/:id',
          args: DonationDetailRouteArgs(
            key: key,
            data: data,
            id: id,
          ),
          rawPathParams: {'id': id},
        );

  static const String name = 'DonationDetailRoute';
}

class DonationDetailRouteArgs {
  const DonationDetailRouteArgs({
    this.key,
    this.data,
    this.id,
  });

  final _i36.Key? key;

  final dynamic data;

  final dynamic id;

  @override
  String toString() {
    return 'DonationDetailRouteArgs{key: $key, data: $data, id: $id}';
  }
}

/// generated route for
/// [_i19.Needs]
class NeedsRoute extends _i35.PageRouteInfo<NeedsRouteArgs> {
  NeedsRoute({
    _i36.Key? key,
    dynamic category,
  }) : super(
          NeedsRoute.name,
          path: '/needs/:category',
          args: NeedsRouteArgs(
            key: key,
            category: category,
          ),
          rawPathParams: {'category': category},
        );

  static const String name = 'NeedsRoute';
}

class NeedsRouteArgs {
  const NeedsRouteArgs({
    this.key,
    this.category,
  });

  final _i36.Key? key;

  final dynamic category;

  @override
  String toString() {
    return 'NeedsRouteArgs{key: $key, category: $category}';
  }
}

/// generated route for
/// [_i20.Volunteer]
class VolunteerRoute extends _i35.PageRouteInfo<void> {
  const VolunteerRoute()
      : super(
          VolunteerRoute.name,
          path: '/volunteer',
        );

  static const String name = 'VolunteerRoute';
}

/// generated route for
/// [_i21.AddRequest]
class AddRequestRoute extends _i35.PageRouteInfo<void> {
  const AddRequestRoute()
      : super(
          AddRequestRoute.name,
          path: '/createNeed',
        );

  static const String name = 'AddRequestRoute';
}

/// generated route for
/// [_i22.NeedDetail]
class NeedDetailRoute extends _i35.PageRouteInfo<NeedDetailRouteArgs> {
  NeedDetailRoute({
    _i36.Key? key,
    dynamic data,
    dynamic id,
  }) : super(
          NeedDetailRoute.name,
          path: '/needs/details/:id',
          args: NeedDetailRouteArgs(
            key: key,
            data: data,
            id: id,
          ),
          rawPathParams: {'id': id},
        );

  static const String name = 'NeedDetailRoute';
}

class NeedDetailRouteArgs {
  const NeedDetailRouteArgs({
    this.key,
    this.data,
    this.id,
  });

  final _i36.Key? key;

  final dynamic data;

  final dynamic id;

  @override
  String toString() {
    return 'NeedDetailRouteArgs{key: $key, data: $data, id: $id}';
  }
}

/// generated route for
/// [_i23.UserProfile]
class UserProfileRoute extends _i35.PageRouteInfo<void> {
  const UserProfileRoute()
      : super(
          UserProfileRoute.name,
          path: '/user-profile',
        );

  static const String name = 'UserProfileRoute';
}

/// generated route for
/// [_i24.CertificatePrint]
class CertificatePrintRoute extends _i35.PageRouteInfo<void> {
  const CertificatePrintRoute()
      : super(
          CertificatePrintRoute.name,
          path: '/certificatePreview',
        );

  static const String name = 'CertificatePrintRoute';
}

/// generated route for
/// [_i25.ApplyForVolunteer]
class ApplyForVolunteerRoute extends _i35.PageRouteInfo<void> {
  const ApplyForVolunteerRoute()
      : super(
          ApplyForVolunteerRoute.name,
          path: '/apply-volunteer',
        );

  static const String name = 'ApplyForVolunteerRoute';
}

/// generated route for
/// [_i26.ApproveVolunter]
class ApproveVolunterRoute
    extends _i35.PageRouteInfo<ApproveVolunterRouteArgs> {
  ApproveVolunterRoute({
    _i36.Key? key,
    dynamic id,
  }) : super(
          ApproveVolunterRoute.name,
          path: '/approveVolunter/:id',
          args: ApproveVolunterRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
        );

  static const String name = 'ApproveVolunterRoute';
}

class ApproveVolunterRouteArgs {
  const ApproveVolunterRouteArgs({
    this.key,
    this.id,
  });

  final _i36.Key? key;

  final dynamic id;

  @override
  String toString() {
    return 'ApproveVolunterRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i27.AdminDashBoardData]
class AdminDashBoardDataRoute extends _i35.PageRouteInfo<void> {
  const AdminDashBoardDataRoute()
      : super(
          AdminDashBoardDataRoute.name,
          path: '/admin-dashboard',
        );

  static const String name = 'AdminDashBoardDataRoute';
}

/// generated route for
/// [_i28.ViewUsers]
class ViewUsersRoute extends _i35.PageRouteInfo<void> {
  const ViewUsersRoute()
      : super(
          ViewUsersRoute.name,
          path: '/view-user',
        );

  static const String name = 'ViewUsersRoute';
}

/// generated route for
/// [_i29.UserDetails]
class UserDetailsRoute extends _i35.PageRouteInfo<void> {
  const UserDetailsRoute()
      : super(
          UserDetailsRoute.name,
          path: '/userDetails',
        );

  static const String name = 'UserDetailsRoute';
}

/// generated route for
/// [_i30.MessageDetails]
class MessageDetailsRoute extends _i35.PageRouteInfo<MessageDetailsRouteArgs> {
  MessageDetailsRoute({
    _i36.Key? key,
    required String receiverName,
    required String receiverId,
  }) : super(
          MessageDetailsRoute.name,
          path: '/message/:receiverName/:receiverId',
          args: MessageDetailsRouteArgs(
            key: key,
            receiverName: receiverName,
            receiverId: receiverId,
          ),
          rawPathParams: {
            'receiverName': receiverName,
            'receiverId': receiverId,
          },
        );

  static const String name = 'MessageDetailsRoute';
}

class MessageDetailsRouteArgs {
  const MessageDetailsRouteArgs({
    this.key,
    required this.receiverName,
    required this.receiverId,
  });

  final _i36.Key? key;

  final String receiverName;

  final String receiverId;

  @override
  String toString() {
    return 'MessageDetailsRouteArgs{key: $key, receiverName: $receiverName, receiverId: $receiverId}';
  }
}

/// generated route for
/// [_i31.ViewDonations]
class ViewDonationsRoute extends _i35.PageRouteInfo<void> {
  const ViewDonationsRoute()
      : super(
          ViewDonationsRoute.name,
          path: '/donations-list',
        );

  static const String name = 'ViewDonationsRoute';
}

/// generated route for
/// [_i32.DonatedDetails]
class DonatedDetailsRoute extends _i35.PageRouteInfo<void> {
  const DonatedDetailsRoute()
      : super(
          DonatedDetailsRoute.name,
          path: '/donatedDetails',
        );

  static const String name = 'DonatedDetailsRoute';
}

/// generated route for
/// [_i33.ViewRequests]
class ViewRequestsRoute extends _i35.PageRouteInfo<void> {
  const ViewRequestsRoute()
      : super(
          ViewRequestsRoute.name,
          path: '/requests',
        );

  static const String name = 'ViewRequestsRoute';
}

/// generated route for
/// [_i34.RequestDetails]
class RequestDetailsRoute extends _i35.PageRouteInfo<void> {
  const RequestDetailsRoute()
      : super(
          RequestDetailsRoute.name,
          path: '/requestDetails',
        );

  static const String name = 'RequestDetailsRoute';
}
