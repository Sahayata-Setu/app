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
import 'package:auto_route/auto_route.dart' as _i48;
import 'package:flutter/material.dart' as _i49;

import '../auth/auth_check/auth_check.dart' as _i1;
import '../constant/common/splashScreen/splashScreen.dart' as _i2;
import '../features/account-settings/account-settings.dart' as _i9;
import '../features/Admin/add-preferred-locations/add-preferred-locations.dart'
    as _i35;
import '../features/Admin/admin-message/admin-message.dart' as _i47;
import '../features/Admin/Dashboard/admin-dashboard.data.dart' as _i31;
import '../features/Admin/Donations/donatedDetails.dart' as _i39;
import '../features/Admin/Donations/viewDonations.dart' as _i38;
import '../features/Admin/NewDashboard/new-admin-dashboard.dart' as _i34;
import '../features/Admin/Profile/adminChangePassword.dart' as _i46;
import '../features/Admin/Profile/adminProfile.dart' as _i45;
import '../features/Admin/Requests/requestDetails.dart' as _i41;
import '../features/Admin/Requests/viewRequest.dart' as _i40;
import '../features/Admin/Users/userDetails.dart' as _i37;
import '../features/Admin/Users/viewUsers.dart' as _i36;
import '../features/Admin/Volunteer%20Application/viewVolunteerApplications.dart'
    as _i43;
import '../features/Admin/Volunteer%20Application/volunteerApplicationDetails.dart'
    as _i44;
import '../features/Admin/widgets/approveVolunter.dart' as _i30;
import '../features/apply-for-volunteer/apply-for-volunteer.dart' as _i29;
import '../features/campaigns/campaignDetails.dart' as _i18;
import '../features/campaigns/campaignsList.dart' as _i16;
import '../features/campaigns/widgets/createCampaign.dart' as _i17;
import '../features/certifications/widgets/certificatePrint.dart' as _i27;
import '../features/change-location/change-location.dart' as _i8;
import '../features/change-password/change-password.dart' as _i7;
import '../features/donations/Dontations.dart' as _i19;
import '../features/donations/widgets/addDonations.dart' as _i20;
import '../features/donations/widgets/donationDetails.dart' as _i21;
import '../features/donations_claim/donations_claim.dart' as _i6;
import '../features/homepage/homepage.dart' as _i5;
import '../features/login/forgot-password.dart' as _i42;
import '../features/login/login.dart' as _i12;
import '../features/message/messageDetails.dart' as _i33;
import '../features/needs/Needs.dart' as _i22;
import '../features/needs/widgets/addNeed.dart' as _i24;
import '../features/needs/widgets/needDetail.dart' as _i25;
import '../features/new-message/all-messages.dart' as _i14;
import '../features/notifications/notifications.dart' as _i15;
import '../features/otp/mobile-number.dart' as _i3;
import '../features/otp/otp-verification.dart' as _i32;
import '../features/otp/widgets/recaptcha.dart' as _i11;
import '../features/profile/user-profile.dart' as _i26;
import '../features/profile/widgets/myDonations.dart' as _i10;
import '../features/search-page/search-page.dart' as _i13;
import '../features/signup/SignUp.dart' as _i4;
import '../features/volunteer/campaigns.dart' as _i28;
import '../features/volunteer/volunteer.dart' as _i23;

class AppRouter extends _i48.RootStackRouter {
  AppRouter([_i49.GlobalKey<_i49.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i48.PageFactory> pagesMap = {
    AuthCheckWidgetRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.AuthCheckWidget(),
      );
    },
    SplashScreenRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.SplashScreen(),
      );
    },
    MobileNumberRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.MobileNumber(),
      );
    },
    SignupRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.Signup(),
      );
    },
    HomePageRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.HomePage(),
      );
    },
    DonationsClaimRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.DonationsClaim(),
      );
    },
    ChangePasswordRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.ChangePassword(),
      );
    },
    ChangeLocationRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.ChangeLocation(),
      );
    },
    AccountSettingsRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.AccountSettings(),
      );
    },
    MyDonationsRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.MyDonations(),
      );
    },
    RecaptchaRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.Recaptcha(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.Login(),
      );
    },
    SearchPageRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.SearchPage(),
      );
    },
    NewMessageRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i14.NewMessage(),
      );
    },
    NotificationsRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.Notifications(),
      );
    },
    CampaignsListRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i16.CampaignsList(),
      );
    },
    CreateCampaignRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i17.CreateCampaign(),
      );
    },
    CampiagnDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<CampiagnDetailsRouteArgs>(
          orElse: () => CampiagnDetailsRouteArgs(id: pathParams.get('id')));
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i18.CampiagnDetails(
          key: args.key,
          id: args.id,
        ),
      );
    },
    DontaionsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<DontaionsRouteArgs>(
          orElse: () =>
              DontaionsRouteArgs(category: pathParams.get('category')));
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i19.Dontaions(
          key: args.key,
          category: args.category,
        ),
      );
    },
    AddDontaionRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i20.AddDontaion(),
      );
    },
    DonationDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<DonationDetailRouteArgs>(
          orElse: () => DonationDetailRouteArgs(id: pathParams.get('id')));
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i21.DonationDetail(
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
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i22.Needs(
          key: args.key,
          category: args.category,
        ),
      );
    },
    VolunteerRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i23.Volunteer(),
      );
    },
    AddRequestRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i24.AddRequest(),
      );
    },
    NeedDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<NeedDetailRouteArgs>(
          orElse: () => NeedDetailRouteArgs(id: pathParams.get('id')));
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i25.NeedDetail(
          key: args.key,
          data: args.data,
          id: args.id,
        ),
      );
    },
    UserProfileRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i26.UserProfile(),
      );
    },
    CertificatePrintRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i27.CertificatePrint(),
      );
    },
    MyCampaignsRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i28.MyCampaigns(),
      );
    },
    ApplyForVolunteerRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i29.ApplyForVolunteer(),
      );
    },
    ApproveVolunterRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ApproveVolunterRouteArgs>(
          orElse: () => ApproveVolunterRouteArgs(id: pathParams.get('id')));
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i30.ApproveVolunter(
          key: args.key,
          id: args.id,
        ),
      );
    },
    AdminDashBoardDataRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i31.AdminDashBoardData(),
      );
    },
    OtpVerificationRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i32.OtpVerification(),
      );
    },
    MessageDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MessageDetailsRouteArgs>(
          orElse: () => MessageDetailsRouteArgs(
                receiverName: pathParams.getString('receiverName'),
                receiverId: pathParams.getString('receiverId'),
              ));
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i33.MessageDetails(
          key: args.key,
          receiverName: args.receiverName,
          receiverId: args.receiverId,
        ),
      );
    },
    NewAdminDashboardRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i34.NewAdminDashboard(),
      );
    },
    AddPreferredLocationRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i35.AddPreferredLocation(),
      );
    },
    ViewUsersRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i36.ViewUsers(),
      );
    },
    UserDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<UserDetailsRouteArgs>(
          orElse: () => UserDetailsRouteArgs(userId: pathParams.get('userId')));
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i37.UserDetails(
          key: args.key,
          userId: args.userId,
        ),
      );
    },
    ViewDonationsRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i38.ViewDonations(),
      );
    },
    DonatedDetailsRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i39.DonatedDetails(),
      );
    },
    ViewRequestsRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i40.ViewRequests(),
      );
    },
    RequestDetailsRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i41.RequestDetails(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i42.ForgotPassword(),
      );
    },
    ViewVolunteerApplicationsRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i43.ViewVolunteerApplications(),
      );
    },
    VolunteerApplicationDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<VolunteerApplicationDetailsRouteArgs>(
          orElse: () => VolunteerApplicationDetailsRouteArgs(
              userId: pathParams.get('userId')));
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i44.VolunteerApplicationDetails(
          key: args.key,
          userId: args.userId,
        ),
      );
    },
    AdminProfileRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i45.AdminProfile(),
      );
    },
    AdminChangePasswordRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i46.AdminChangePassword(),
      );
    },
    AdminMessageRoute.name: (routeData) {
      return _i48.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i47.AdminMessage(),
      );
    },
  };

  @override
  List<_i48.RouteConfig> get routes => [
        _i48.RouteConfig(
          AuthCheckWidgetRoute.name,
          path: '/',
        ),
        _i48.RouteConfig(
          SplashScreenRoute.name,
          path: '/splash',
        ),
        _i48.RouteConfig(
          MobileNumberRoute.name,
          path: '/mobile-number',
        ),
        _i48.RouteConfig(
          SignupRoute.name,
          path: '/signup',
        ),
        _i48.RouteConfig(
          HomePageRoute.name,
          path: '/homepage',
        ),
        _i48.RouteConfig(
          DonationsClaimRoute.name,
          path: '/donations_claim',
        ),
        _i48.RouteConfig(
          ChangePasswordRoute.name,
          path: '/change-password',
        ),
        _i48.RouteConfig(
          ChangeLocationRoute.name,
          path: '/change-location',
        ),
        _i48.RouteConfig(
          AccountSettingsRoute.name,
          path: '/account-settings',
        ),
        _i48.RouteConfig(
          MyDonationsRoute.name,
          path: '/myDonations',
        ),
        _i48.RouteConfig(
          RecaptchaRoute.name,
          path: '/recaptcha',
        ),
        _i48.RouteConfig(
          LoginRoute.name,
          path: '/login',
        ),
        _i48.RouteConfig(
          SearchPageRoute.name,
          path: '/search',
        ),
        _i48.RouteConfig(
          NewMessageRoute.name,
          path: '/messages',
        ),
        _i48.RouteConfig(
          NotificationsRoute.name,
          path: '/notifications',
        ),
        _i48.RouteConfig(
          CampaignsListRoute.name,
          path: '/campaigns',
        ),
        _i48.RouteConfig(
          CreateCampaignRoute.name,
          path: '/createCampaign',
        ),
        _i48.RouteConfig(
          CampiagnDetailsRoute.name,
          path: '/campaigns/:id',
        ),
        _i48.RouteConfig(
          DontaionsRoute.name,
          path: '/donations/:category',
        ),
        _i48.RouteConfig(
          AddDontaionRoute.name,
          path: '/createDonation',
        ),
        _i48.RouteConfig(
          DonationDetailRoute.name,
          path: '/donations-details/:id',
        ),
        _i48.RouteConfig(
          NeedsRoute.name,
          path: '/needs/:category',
        ),
        _i48.RouteConfig(
          VolunteerRoute.name,
          path: '/volunteer',
        ),
        _i48.RouteConfig(
          AddRequestRoute.name,
          path: '/createNeed',
        ),
        _i48.RouteConfig(
          NeedDetailRoute.name,
          path: '/needs/details/:id',
        ),
        _i48.RouteConfig(
          UserProfileRoute.name,
          path: '/user-profile',
        ),
        _i48.RouteConfig(
          CertificatePrintRoute.name,
          path: '/certificatePreview',
        ),
        _i48.RouteConfig(
          MyCampaignsRoute.name,
          path: '/see-all-campaigns',
        ),
        _i48.RouteConfig(
          ApplyForVolunteerRoute.name,
          path: '/apply-volunteer',
        ),
        _i48.RouteConfig(
          ApproveVolunterRoute.name,
          path: '/approveVolunter/:id',
        ),
        _i48.RouteConfig(
          AdminDashBoardDataRoute.name,
          path: '/admin-dashboard',
        ),
        _i48.RouteConfig(
          OtpVerificationRoute.name,
          path: '/otp-verification',
        ),
        _i48.RouteConfig(
          MessageDetailsRoute.name,
          path: '/message/:receiverName/:receiverId',
        ),
        _i48.RouteConfig(
          NewAdminDashboardRoute.name,
          path: '/new-admin-dashboard',
        ),
        _i48.RouteConfig(
          AddPreferredLocationRoute.name,
          path: '/add-preferred-location',
        ),
        _i48.RouteConfig(
          ViewUsersRoute.name,
          path: '/view-user',
        ),
        _i48.RouteConfig(
          UserDetailsRoute.name,
          path: '/userDetails/:userId',
        ),
        _i48.RouteConfig(
          ViewDonationsRoute.name,
          path: '/donations-list',
        ),
        _i48.RouteConfig(
          DonatedDetailsRoute.name,
          path: '/donatedDetails',
        ),
        _i48.RouteConfig(
          ViewRequestsRoute.name,
          path: '/requests',
        ),
        _i48.RouteConfig(
          RequestDetailsRoute.name,
          path: '/requestDetails',
        ),
        _i48.RouteConfig(
          ForgotPasswordRoute.name,
          path: '/forgot-password',
        ),
        _i48.RouteConfig(
          ViewVolunteerApplicationsRoute.name,
          path: '/view-volunteer-applications',
        ),
        _i48.RouteConfig(
          VolunteerApplicationDetailsRoute.name,
          path: '/volunteer-application-details/:userId',
        ),
        _i48.RouteConfig(
          AdminProfileRoute.name,
          path: '/admin-profile',
        ),
        _i48.RouteConfig(
          AdminChangePasswordRoute.name,
          path: '/admin-change-password',
        ),
        _i48.RouteConfig(
          AdminMessageRoute.name,
          path: '/admin-message',
        ),
      ];
}

/// generated route for
/// [_i1.AuthCheckWidget]
class AuthCheckWidgetRoute extends _i48.PageRouteInfo<void> {
  const AuthCheckWidgetRoute()
      : super(
          AuthCheckWidgetRoute.name,
          path: '/',
        );

  static const String name = 'AuthCheckWidgetRoute';
}

/// generated route for
/// [_i2.SplashScreen]
class SplashScreenRoute extends _i48.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/splash',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i3.MobileNumber]
class MobileNumberRoute extends _i48.PageRouteInfo<void> {
  const MobileNumberRoute()
      : super(
          MobileNumberRoute.name,
          path: '/mobile-number',
        );

  static const String name = 'MobileNumberRoute';
}

/// generated route for
/// [_i4.Signup]
class SignupRoute extends _i48.PageRouteInfo<void> {
  const SignupRoute()
      : super(
          SignupRoute.name,
          path: '/signup',
        );

  static const String name = 'SignupRoute';
}

/// generated route for
/// [_i5.HomePage]
class HomePageRoute extends _i48.PageRouteInfo<void> {
  const HomePageRoute()
      : super(
          HomePageRoute.name,
          path: '/homepage',
        );

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i6.DonationsClaim]
class DonationsClaimRoute extends _i48.PageRouteInfo<void> {
  const DonationsClaimRoute()
      : super(
          DonationsClaimRoute.name,
          path: '/donations_claim',
        );

  static const String name = 'DonationsClaimRoute';
}

/// generated route for
/// [_i7.ChangePassword]
class ChangePasswordRoute extends _i48.PageRouteInfo<void> {
  const ChangePasswordRoute()
      : super(
          ChangePasswordRoute.name,
          path: '/change-password',
        );

  static const String name = 'ChangePasswordRoute';
}

/// generated route for
/// [_i8.ChangeLocation]
class ChangeLocationRoute extends _i48.PageRouteInfo<void> {
  const ChangeLocationRoute()
      : super(
          ChangeLocationRoute.name,
          path: '/change-location',
        );

  static const String name = 'ChangeLocationRoute';
}

/// generated route for
/// [_i9.AccountSettings]
class AccountSettingsRoute extends _i48.PageRouteInfo<void> {
  const AccountSettingsRoute()
      : super(
          AccountSettingsRoute.name,
          path: '/account-settings',
        );

  static const String name = 'AccountSettingsRoute';
}

/// generated route for
/// [_i10.MyDonations]
class MyDonationsRoute extends _i48.PageRouteInfo<void> {
  const MyDonationsRoute()
      : super(
          MyDonationsRoute.name,
          path: '/myDonations',
        );

  static const String name = 'MyDonationsRoute';
}

/// generated route for
/// [_i11.Recaptcha]
class RecaptchaRoute extends _i48.PageRouteInfo<void> {
  const RecaptchaRoute()
      : super(
          RecaptchaRoute.name,
          path: '/recaptcha',
        );

  static const String name = 'RecaptchaRoute';
}

/// generated route for
/// [_i12.Login]
class LoginRoute extends _i48.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i13.SearchPage]
class SearchPageRoute extends _i48.PageRouteInfo<void> {
  const SearchPageRoute()
      : super(
          SearchPageRoute.name,
          path: '/search',
        );

  static const String name = 'SearchPageRoute';
}

/// generated route for
/// [_i14.NewMessage]
class NewMessageRoute extends _i48.PageRouteInfo<void> {
  const NewMessageRoute()
      : super(
          NewMessageRoute.name,
          path: '/messages',
        );

  static const String name = 'NewMessageRoute';
}

/// generated route for
/// [_i15.Notifications]
class NotificationsRoute extends _i48.PageRouteInfo<void> {
  const NotificationsRoute()
      : super(
          NotificationsRoute.name,
          path: '/notifications',
        );

  static const String name = 'NotificationsRoute';
}

/// generated route for
/// [_i16.CampaignsList]
class CampaignsListRoute extends _i48.PageRouteInfo<void> {
  const CampaignsListRoute()
      : super(
          CampaignsListRoute.name,
          path: '/campaigns',
        );

  static const String name = 'CampaignsListRoute';
}

/// generated route for
/// [_i17.CreateCampaign]
class CreateCampaignRoute extends _i48.PageRouteInfo<void> {
  const CreateCampaignRoute()
      : super(
          CreateCampaignRoute.name,
          path: '/createCampaign',
        );

  static const String name = 'CreateCampaignRoute';
}

/// generated route for
/// [_i18.CampiagnDetails]
class CampiagnDetailsRoute
    extends _i48.PageRouteInfo<CampiagnDetailsRouteArgs> {
  CampiagnDetailsRoute({
    _i49.Key? key,
    dynamic id,
  }) : super(
          CampiagnDetailsRoute.name,
          path: '/campaigns/:id',
          args: CampiagnDetailsRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
        );

  static const String name = 'CampiagnDetailsRoute';
}

class CampiagnDetailsRouteArgs {
  const CampiagnDetailsRouteArgs({
    this.key,
    this.id,
  });

  final _i49.Key? key;

  final dynamic id;

  @override
  String toString() {
    return 'CampiagnDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i19.Dontaions]
class DontaionsRoute extends _i48.PageRouteInfo<DontaionsRouteArgs> {
  DontaionsRoute({
    _i49.Key? key,
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

  final _i49.Key? key;

  final dynamic category;

  @override
  String toString() {
    return 'DontaionsRouteArgs{key: $key, category: $category}';
  }
}

/// generated route for
/// [_i20.AddDontaion]
class AddDontaionRoute extends _i48.PageRouteInfo<void> {
  const AddDontaionRoute()
      : super(
          AddDontaionRoute.name,
          path: '/createDonation',
        );

  static const String name = 'AddDontaionRoute';
}

/// generated route for
/// [_i21.DonationDetail]
class DonationDetailRoute extends _i48.PageRouteInfo<DonationDetailRouteArgs> {
  DonationDetailRoute({
    _i49.Key? key,
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

  final _i49.Key? key;

  final dynamic data;

  final dynamic id;

  @override
  String toString() {
    return 'DonationDetailRouteArgs{key: $key, data: $data, id: $id}';
  }
}

/// generated route for
/// [_i22.Needs]
class NeedsRoute extends _i48.PageRouteInfo<NeedsRouteArgs> {
  NeedsRoute({
    _i49.Key? key,
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

  final _i49.Key? key;

  final dynamic category;

  @override
  String toString() {
    return 'NeedsRouteArgs{key: $key, category: $category}';
  }
}

/// generated route for
/// [_i23.Volunteer]
class VolunteerRoute extends _i48.PageRouteInfo<void> {
  const VolunteerRoute()
      : super(
          VolunteerRoute.name,
          path: '/volunteer',
        );

  static const String name = 'VolunteerRoute';
}

/// generated route for
/// [_i24.AddRequest]
class AddRequestRoute extends _i48.PageRouteInfo<void> {
  const AddRequestRoute()
      : super(
          AddRequestRoute.name,
          path: '/createNeed',
        );

  static const String name = 'AddRequestRoute';
}

/// generated route for
/// [_i25.NeedDetail]
class NeedDetailRoute extends _i48.PageRouteInfo<NeedDetailRouteArgs> {
  NeedDetailRoute({
    _i49.Key? key,
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

  final _i49.Key? key;

  final dynamic data;

  final dynamic id;

  @override
  String toString() {
    return 'NeedDetailRouteArgs{key: $key, data: $data, id: $id}';
  }
}

/// generated route for
/// [_i26.UserProfile]
class UserProfileRoute extends _i48.PageRouteInfo<void> {
  const UserProfileRoute()
      : super(
          UserProfileRoute.name,
          path: '/user-profile',
        );

  static const String name = 'UserProfileRoute';
}

/// generated route for
/// [_i27.CertificatePrint]
class CertificatePrintRoute extends _i48.PageRouteInfo<void> {
  const CertificatePrintRoute()
      : super(
          CertificatePrintRoute.name,
          path: '/certificatePreview',
        );

  static const String name = 'CertificatePrintRoute';
}

/// generated route for
/// [_i28.MyCampaigns]
class MyCampaignsRoute extends _i48.PageRouteInfo<void> {
  const MyCampaignsRoute()
      : super(
          MyCampaignsRoute.name,
          path: '/see-all-campaigns',
        );

  static const String name = 'MyCampaignsRoute';
}

/// generated route for
/// [_i29.ApplyForVolunteer]
class ApplyForVolunteerRoute extends _i48.PageRouteInfo<void> {
  const ApplyForVolunteerRoute()
      : super(
          ApplyForVolunteerRoute.name,
          path: '/apply-volunteer',
        );

  static const String name = 'ApplyForVolunteerRoute';
}

/// generated route for
/// [_i30.ApproveVolunter]
class ApproveVolunterRoute
    extends _i48.PageRouteInfo<ApproveVolunterRouteArgs> {
  ApproveVolunterRoute({
    _i49.Key? key,
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

  final _i49.Key? key;

  final dynamic id;

  @override
  String toString() {
    return 'ApproveVolunterRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i31.AdminDashBoardData]
class AdminDashBoardDataRoute extends _i48.PageRouteInfo<void> {
  const AdminDashBoardDataRoute()
      : super(
          AdminDashBoardDataRoute.name,
          path: '/admin-dashboard',
        );

  static const String name = 'AdminDashBoardDataRoute';
}

/// generated route for
/// [_i32.OtpVerification]
class OtpVerificationRoute extends _i48.PageRouteInfo<void> {
  const OtpVerificationRoute()
      : super(
          OtpVerificationRoute.name,
          path: '/otp-verification',
        );

  static const String name = 'OtpVerificationRoute';
}

/// generated route for
/// [_i33.MessageDetails]
class MessageDetailsRoute extends _i48.PageRouteInfo<MessageDetailsRouteArgs> {
  MessageDetailsRoute({
    _i49.Key? key,
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

  final _i49.Key? key;

  final String receiverName;

  final String receiverId;

  @override
  String toString() {
    return 'MessageDetailsRouteArgs{key: $key, receiverName: $receiverName, receiverId: $receiverId}';
  }
}

/// generated route for
/// [_i34.NewAdminDashboard]
class NewAdminDashboardRoute extends _i48.PageRouteInfo<void> {
  const NewAdminDashboardRoute()
      : super(
          NewAdminDashboardRoute.name,
          path: '/new-admin-dashboard',
        );

  static const String name = 'NewAdminDashboardRoute';
}

/// generated route for
/// [_i35.AddPreferredLocation]
class AddPreferredLocationRoute extends _i48.PageRouteInfo<void> {
  const AddPreferredLocationRoute()
      : super(
          AddPreferredLocationRoute.name,
          path: '/add-preferred-location',
        );

  static const String name = 'AddPreferredLocationRoute';
}

/// generated route for
/// [_i36.ViewUsers]
class ViewUsersRoute extends _i48.PageRouteInfo<void> {
  const ViewUsersRoute()
      : super(
          ViewUsersRoute.name,
          path: '/view-user',
        );

  static const String name = 'ViewUsersRoute';
}

/// generated route for
/// [_i37.UserDetails]
class UserDetailsRoute extends _i48.PageRouteInfo<UserDetailsRouteArgs> {
  UserDetailsRoute({
    _i49.Key? key,
    required dynamic userId,
  }) : super(
          UserDetailsRoute.name,
          path: '/userDetails/:userId',
          args: UserDetailsRouteArgs(
            key: key,
            userId: userId,
          ),
          rawPathParams: {'userId': userId},
        );

  static const String name = 'UserDetailsRoute';
}

class UserDetailsRouteArgs {
  const UserDetailsRouteArgs({
    this.key,
    required this.userId,
  });

  final _i49.Key? key;

  final dynamic userId;

  @override
  String toString() {
    return 'UserDetailsRouteArgs{key: $key, userId: $userId}';
  }
}

/// generated route for
/// [_i38.ViewDonations]
class ViewDonationsRoute extends _i48.PageRouteInfo<void> {
  const ViewDonationsRoute()
      : super(
          ViewDonationsRoute.name,
          path: '/donations-list',
        );

  static const String name = 'ViewDonationsRoute';
}

/// generated route for
/// [_i39.DonatedDetails]
class DonatedDetailsRoute extends _i48.PageRouteInfo<void> {
  const DonatedDetailsRoute()
      : super(
          DonatedDetailsRoute.name,
          path: '/donatedDetails',
        );

  static const String name = 'DonatedDetailsRoute';
}

/// generated route for
/// [_i40.ViewRequests]
class ViewRequestsRoute extends _i48.PageRouteInfo<void> {
  const ViewRequestsRoute()
      : super(
          ViewRequestsRoute.name,
          path: '/requests',
        );

  static const String name = 'ViewRequestsRoute';
}

/// generated route for
/// [_i41.RequestDetails]
class RequestDetailsRoute extends _i48.PageRouteInfo<void> {
  const RequestDetailsRoute()
      : super(
          RequestDetailsRoute.name,
          path: '/requestDetails',
        );

  static const String name = 'RequestDetailsRoute';
}

/// generated route for
/// [_i42.ForgotPassword]
class ForgotPasswordRoute extends _i48.PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(
          ForgotPasswordRoute.name,
          path: '/forgot-password',
        );

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i43.ViewVolunteerApplications]
class ViewVolunteerApplicationsRoute extends _i48.PageRouteInfo<void> {
  const ViewVolunteerApplicationsRoute()
      : super(
          ViewVolunteerApplicationsRoute.name,
          path: '/view-volunteer-applications',
        );

  static const String name = 'ViewVolunteerApplicationsRoute';
}

/// generated route for
/// [_i44.VolunteerApplicationDetails]
class VolunteerApplicationDetailsRoute
    extends _i48.PageRouteInfo<VolunteerApplicationDetailsRouteArgs> {
  VolunteerApplicationDetailsRoute({
    _i49.Key? key,
    required dynamic userId,
  }) : super(
          VolunteerApplicationDetailsRoute.name,
          path: '/volunteer-application-details/:userId',
          args: VolunteerApplicationDetailsRouteArgs(
            key: key,
            userId: userId,
          ),
          rawPathParams: {'userId': userId},
        );

  static const String name = 'VolunteerApplicationDetailsRoute';
}

class VolunteerApplicationDetailsRouteArgs {
  const VolunteerApplicationDetailsRouteArgs({
    this.key,
    required this.userId,
  });

  final _i49.Key? key;

  final dynamic userId;

  @override
  String toString() {
    return 'VolunteerApplicationDetailsRouteArgs{key: $key, userId: $userId}';
  }
}

/// generated route for
/// [_i45.AdminProfile]
class AdminProfileRoute extends _i48.PageRouteInfo<void> {
  const AdminProfileRoute()
      : super(
          AdminProfileRoute.name,
          path: '/admin-profile',
        );

  static const String name = 'AdminProfileRoute';
}

/// generated route for
/// [_i46.AdminChangePassword]
class AdminChangePasswordRoute extends _i48.PageRouteInfo<void> {
  const AdminChangePasswordRoute()
      : super(
          AdminChangePasswordRoute.name,
          path: '/admin-change-password',
        );

  static const String name = 'AdminChangePasswordRoute';
}

/// generated route for
/// [_i47.AdminMessage]
class AdminMessageRoute extends _i48.PageRouteInfo<void> {
  const AdminMessageRoute()
      : super(
          AdminMessageRoute.name,
          path: '/admin-message',
        );

  static const String name = 'AdminMessageRoute';
}
