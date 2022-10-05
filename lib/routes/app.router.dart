import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:donationapp/auth/auth_check/auth_check.dart';
import 'package:donationapp/features/Admin/Dashboard/adminDashboard.dart';
import 'package:donationapp/features/account-settings/account-settings.dart';
import 'package:donationapp/features/apply-for-volunteer/apply-for-volunteer.dart';
import 'package:donationapp/features/change-location/change-location.dart';
import 'package:donationapp/features/change-password/change-password.dart';
import 'package:donationapp/features/donations/Dontations.dart';
import 'package:donationapp/features/donations/widgets/donationDetails.dart';
import 'package:donationapp/features/donations/widgets/donationsList.dart';
import 'package:donationapp/features/homepage/homepage.dart';
import 'package:donationapp/features/login/login.dart';
import 'package:donationapp/features/message/message.dart';
import 'package:donationapp/features/notifications/notifications.dart';
import 'package:donationapp/features/profile/user-profile.dart';
import 'package:donationapp/features/search-page/search-page.dart';
import 'package:donationapp/features/signup/SignUp.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: AuthCheckWidget, initial: true, path: "/"),
  MaterialRoute(page: Signup, path: "/signup"),
  // MaterialRoute(page: Signup, path: "/signup"),
  MaterialRoute(page: HomePage, path: "/homepage"),
  MaterialRoute(page: ChangePassword, path: "/change-password"),
  MaterialRoute(page: ChangeLocation, path: "/change-location"),
  MaterialRoute(page: AccountSettings, path: "/account-settings"),
  MaterialRoute(page: Login, path: "/login"),
  MaterialRoute(page: SearchPage, path: "/search"),
  MaterialRoute(page: Message, path: "/messages"),

  MaterialRoute(page: Notifications, path: "/notifications"),
  MaterialRoute(page: Dontaions, path: "/donations/:category"),
  MaterialRoute(page: Donation_Detail, path: "/donations/details/:id"),

  MaterialRoute(page: UserProfile, path: "/user-profile"),
  MaterialRoute(page: ApplyForVolunteer, path: "/apply-volunteer"),
  MaterialRoute(page: AdminDashboard, path: "/admin-dashboard"),
])
@CustomAutoRouter(routes: [])
class $AppRouter {}
