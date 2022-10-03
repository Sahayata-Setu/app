import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:donationapp/features/certifications/certificates.dart';
import 'package:donationapp/features/donations/widgets/addDonations.dart';
import 'package:donationapp/features/donations/widgets/donationDetails.dart';
import 'package:donationapp/features/message/message.dart';
import 'package:donationapp/features/login/login.dart';
import 'package:donationapp/features/needs/widgets/addNeed.dart';
import 'package:donationapp/features/notifications/notifications.dart';
import 'package:donationapp/auth/auth_check/auth_check.dart';
import 'package:donationapp/features/apply-for-volunteer/apply-for-volunteer.dart';
import 'package:donationapp/features/homepage/homepage.dart';
import 'package:donationapp/features/profile/user-profile.dart';
import 'package:donationapp/features/search-page/search-page.dart';
import 'package:donationapp/features/signup/SignUp.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: AuthCheckWidget, initial: true, path: "/"),
  MaterialRoute(page: Signup, path: "/signup"),
  // MaterialRoute(page: Signup, path: "/signup"),
  MaterialRoute(
    page: Login,
    path: "/login",
  ),
  MaterialRoute(page: Message, path: "/message"),
  MaterialRoute(page: Notifications, path: "/notifications"),
  MaterialRoute(page: Donation_Detail, path: "/donations/:id"),
  MaterialRoute(page: AddRequest, path: "/createNeed"),
  MaterialRoute(page: AddDontaion, path: "/createDonation"),
  MaterialRoute(page: Certificates, path: "/certificates"),

  MaterialRoute(page: HomePage, path: "/homepage"),
  MaterialRoute(page: SearchPage, path: "/search"),
  MaterialRoute(page: UserProfile, path: "/user-profile"),
  MaterialRoute(page: ApplyForVolunteer, path: "/apply-volunteer"),
])
@CustomAutoRouter(routes: [])
class $AppRouter {}
