import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:donationapp/auth/auth_check/auth_check.dart';
import 'package:donationapp/features/Admin/Dashboard/adminDashboard.dart';
import 'package:donationapp/features/account-settings/account-settings.dart';
import 'package:donationapp/features/apply-for-volunteer/apply-for-volunteer.dart';
import 'package:donationapp/features/campaigns/campaignDetails.dart';
import 'package:donationapp/features/campaigns/campaignsList.dart';
import 'package:donationapp/features/campaigns/widgets/createCampaign.dart';
import 'package:donationapp/features/certifications/widgets/certificatePrint.dart';
import 'package:donationapp/features/change-location/change-location.dart';
import 'package:donationapp/features/change-password/change-password.dart';
import 'package:donationapp/features/donations/widgets/donationDetails.data.dart';
import 'package:donationapp/features/homepage/homepage-data.dart';
import 'package:donationapp/features/donations/Dontations.dart';
import 'package:donationapp/features/donations/widgets/addDonations.dart';
import 'package:donationapp/features/donations/widgets/donationDetails.dart';
import 'package:donationapp/features/homepage/homepage.dart';
import 'package:donationapp/features/login/login.dart';
import 'package:donationapp/features/message/message.dart';
import 'package:donationapp/features/message/messageDetails.dart';
import 'package:donationapp/features/needs/Needs.dart';
import 'package:donationapp/features/needs/widgets/addNeed.dart';
import 'package:donationapp/features/needs/widgets/needDetail.dart';
import 'package:donationapp/features/needs/widgets/needDetail.data.dart';
import 'package:donationapp/features/notifications/notifications.dart';
import 'package:donationapp/features/profile/user-profile.dart';
import 'package:donationapp/features/profile/user-profile.data.dart';
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

  MaterialRoute(page: CampaignsList, path: "/campaigns"),
  MaterialRoute(page: CreateCampaign, path: "/createCampaign"),

  MaterialRoute(page: CampiagnDetails, path: "/campaigns/:id"),

  MaterialRoute(page: Dontaions, path: "/donations/:category"),
  MaterialRoute(page: AddDontaion, path: "/createDonation"),
  // MaterialRoute(page: DonationDetail, path: "/donations"),
  MaterialRoute(page: DonationDetailData, path: "/donations-details/:id"),

  MaterialRoute(page: Needs, path: "/needs/:category"),
  MaterialRoute(page: AddRequest, path: "/createNeed"),
  MaterialRoute(page: NeedDetailData, path: "/needs/details/:id"),

  MaterialRoute(page: UserProfile, path: "/user-profile"),
  MaterialRoute(page: CertificatePrint, path: "/certificatePreview"),
  // MaterialRoute(page: ApplyForVolunteer, path: "/apply-volunteer"),
  MaterialRoute(page: ApplyForVolunteer, path: "/apply-volunteer"),
  MaterialRoute(page: AdminDashboard, path: "/admin-dashboard"),
  MaterialRoute(
      page: MessageDetails, path: "/message/:receiverName/:receiverId"),
])
@CustomAutoRouter(routes: [])
class $AppRouter {}
