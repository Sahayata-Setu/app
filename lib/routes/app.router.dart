import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:donationapp/auth/auth_check/auth_check.dart';
import 'package:donationapp/constant/common/splashScreen/splashScreen.dart';
import 'package:donationapp/features/Admin/Dashboard/admin-dashboard.data.dart';
import 'package:donationapp/features/Admin/Dashboard/adminDashboard.dart';
import 'package:donationapp/features/Admin/Donations/donatedDetails.dart';
import 'package:donationapp/features/Admin/Donations/viewDonations.dart';
import 'package:donationapp/features/Admin/NewDashboard/new-admin-dashboard.dart';
import 'package:donationapp/features/Admin/Profile/adminChangePassword.dart';
import 'package:donationapp/features/Admin/Profile/adminProfile.dart';
import 'package:donationapp/features/Admin/Requests/requestDetails.dart';
import 'package:donationapp/features/Admin/Requests/viewRequest.dart';
import 'package:donationapp/features/Admin/Users/userDetails.dart';
import 'package:donationapp/features/Admin/Users/viewUsers.dart';
import 'package:donationapp/features/Admin/Volunteer%20Application/viewVolunteerApplications.dart';
import 'package:donationapp/features/Admin/Volunteer%20Application/volunteerApplicationDetails.dart';
import 'package:donationapp/features/Admin/add-preferred-locations/add-preferred-locations.dart';
import 'package:donationapp/features/Admin/add/add.dart';
import 'package:donationapp/features/Admin/admin-message/admin-message.dart';
import 'package:donationapp/features/Admin/widgets/approveVolunter.dart';
import 'package:donationapp/features/Leaderboard/leaderboard.dart';
import 'package:donationapp/features/account-settings/account-settings.dart';
import 'package:donationapp/features/apply-for-volunteer/apply-for-volunteer.dart';
import 'package:donationapp/features/campaigns/campaignDetails.dart';
import 'package:donationapp/features/campaigns/campaignsList.dart';
import 'package:donationapp/features/campaigns/widgets/campiganDetailsListings.dart';
import 'package:donationapp/features/campaigns/widgets/createCampaign.dart';
import 'package:donationapp/features/certifications/widgets/certificatePrint.dart';
import 'package:donationapp/features/change-location/change-location.dart';
import 'package:donationapp/features/change-password/change-password.dart';
import 'package:donationapp/features/donations/widgets/addDonations.dart';
import 'package:donationapp/features/donations/widgets/donationDetails.dart';
import 'package:donationapp/features/donations_claim/donations_claim.dart';
import 'package:donationapp/features/homepage/homepage-data.dart';
import 'package:donationapp/features/homepage/homepage.dart';
import 'package:donationapp/features/login/forgot-password.dart';
import 'package:donationapp/features/login/login.dart';
import 'package:donationapp/features/message/message.dart';
import 'package:donationapp/features/message/message.dart';
import 'package:donationapp/features/message/messageDetails.dart';
import 'package:donationapp/features/needs/Needs.dart';
import 'package:donationapp/features/needs/widgets/addNeed.dart';
import 'package:donationapp/features/needs/widgets/needDetail.dart';
import 'package:donationapp/features/needs/widgets/needDetail.data.dart';
import 'package:donationapp/features/new-message/all-messages.dart';
import 'package:donationapp/features/notifications/notifications.dart';
import 'package:donationapp/features/otp/mobile-number.dart';
import 'package:donationapp/features/otp/otp-verification.dart';
import 'package:donationapp/features/profile/user-profile.dart';
import 'package:donationapp/features/profile/user-profile.data.dart';
import 'package:donationapp/features/profile/widgets/myDonations.dart';
import 'package:donationapp/features/search-page/search-page.dart';
import 'package:donationapp/features/signup/SignUp.dart';
import 'package:donationapp/features/volunteer/campaigns.dart';
import 'package:donationapp/features/volunteer/volunteer.dart';
import '../features/donations/Dontations.dart';
import '../features/otp/widgets/recaptcha.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: AuthCheckWidget, initial: true),

  MaterialRoute(page: SplashScreen, path: "/splash"),
  MaterialRoute(page: MobileNumber, path: "/mobile-number"),

  MaterialRoute(page: Signup, path: "/signup"),
  // MaterialRoute(page: Signup, path: "/signup"),

  MaterialRoute(page: HomePage, path: "/homepage"),
  MaterialRoute(page: DonationsClaim, path: "/donations_claim"),
  MaterialRoute(page: ChangePassword, path: "/change-password"),
  MaterialRoute(page: ChangeLocation, path: "/change-location"),
  // MaterialRoute(page: ChangeLocation, path: "/change-location"),
  MaterialRoute(page: AccountSettings, path: "/account-settings"),
  MaterialRoute(page: MyDonations, path: "/myDonations"),
  MaterialRoute(page: Recaptcha, path: "/recaptcha"),

  MaterialRoute(page: Login, path: "/login"),
  MaterialRoute(page: SearchPage, path: "/search"),
  MaterialRoute(page: NewMessage, path: "/messages"),
  MaterialRoute(page: Notifications, path: "/notifications"),

  MaterialRoute(page: CampaignsList, path: "/campaigns"),
  MaterialRoute(page: CreateCampaign, path: "/createCampaign"),

  MaterialRoute(page: CampiagnDetails, path: "/campaigns/:id"),

  MaterialRoute(page: Dontaions, path: "/donations/:category"),
  MaterialRoute(page: AddDontaion, path: "/createDonation"),
  // MaterialRoute(page: DonationDetail, path: "/donations"),
  MaterialRoute(page: DonationDetail, path: "/donations-details/:id"),

  MaterialRoute(page: Needs, path: "/needs/:category"),
  MaterialRoute(page: Volunteer, path: "/volunteer"),

  MaterialRoute(page: AddRequest, path: "/createNeed"),
  MaterialRoute(page: NeedDetail, path: "/needs/details/:id"),

  MaterialRoute(page: UserProfile, path: "/user-profile"),
  MaterialRoute(page: CertificatePrint, path: "/certificatePreview"),
  MaterialRoute(page: MyCampaigns, path: "/see-all-campaigns"),
  // MaterialRoute(page: ApplyForVolunteer, path: "/apply-volunteer"),
  MaterialRoute(page: ApplyForVolunteer, path: "/apply-volunteer"),
  MaterialRoute(page: ApproveVolunter, path: "/approveVolunter/:id"),

  MaterialRoute(page: Leaderboard, path: "/leaderboard"),

  MaterialRoute(page: AdminDashBoardData, path: "/admin-dashboard"),
  MaterialRoute(page: OtpVerification, path: "/otp-verification"),
  // MaterialRoute(page: CampiagnDetails, path: "/campains-single-detail"),
  MaterialRoute(
    page: MessageDetails,
    path: "/message/:receiverName/:receiverId",
  ),

  // Admin New Dashboard
  MaterialRoute(page: NewAdminDashboard, path: "/new-admin-dashboard"),
  MaterialRoute(page: AddPreferredLocation, path: "/add-preferred-location"),

  // Admin users section
  MaterialRoute(page: ViewUsers, path: "/view-user"),
  MaterialRoute(page: UserDetails, path: "/userDetails/:userId"),

  // Admin Donations
  MaterialRoute(page: ViewDonations, path: "/donations-list"),
  MaterialRoute(page: DonatedDetails, path: "/donatedDetails"),

  // Admin Requests Section
  MaterialRoute(page: ViewRequests, path: "/requests"),
  MaterialRoute(page: RequestDetails, path: "/requestDetails"),
  MaterialRoute(page: ForgotPassword, path: "/forgot-password"),
  MaterialRoute(page: Add, path: "/add"),

  // Admin Volunteer Applications
  MaterialRoute(
      page: ViewVolunteerApplications, path: "/view-volunteer-applications"),
  MaterialRoute(
      page: VolunteerApplicationDetails,
      path: "/volunteer-application-details/:userId"),

  // Admin Profile Section
  MaterialRoute(page: AdminProfile, path: "/admin-profile"),
  MaterialRoute(page: AdminChangePassword, path: "/admin-change-password"),
  MaterialRoute(page: AdminMessage, path: "/admin-message"),
])
@CustomAutoRouter(routes: [])
class $AppRouter {}
