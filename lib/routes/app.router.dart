import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:donationapp/features/homepage/widgets/Donations/addDonations.dart';
import 'package:donationapp/features/message/message.dart';
import 'package:donationapp/features/homepage/homepage.dart';
import 'package:donationapp/features/login/login.dart';
import 'package:donationapp/features/notifications/notifications.dart';
import 'package:donationapp/features/signup/SignUp.dart';
import 'package:donationapp/features/user-profile/user-profile.dart';

import '../features/homepage/widgets/Donations/donationDetails.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: Signup, path: "/signup"),
  // MaterialRoute(page: Signup, path: "/signup"),
  MaterialRoute(page: HomePage, path: "/homepage", initial: true),
  MaterialRoute(
    page: Login,
    path: "/login",
  ),
  MaterialRoute(page: Message, path: "/message"),
  MaterialRoute(page: Notifications, path: "/notifications"),
  MaterialRoute(page: User_Profile, path: "/user-profile"),
  MaterialRoute(page: Donation_Detail, path: "/donations/:id"),
  MaterialRoute(page: AddDontaion, path: "/createDonation"),
])
@CustomAutoRouter(routes: [])
class $AppRouter {}
