import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/horizontal-line/horizontal-line.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/donations_claim/store/donations_claim.store.dart';
import 'package:donationapp/features/profile/widgets/user-profile-image.dart';
import 'package:donationapp/features/profile/widgets/user-profile-info.dart';
import 'package:donationapp/features/profile/widgets/user-profile-options.dart';
import 'package:donationapp/helpers/custom.toast.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/routes/app.router.gr.dart';
import 'package:donationapp/services/login/login.service.dart';
import 'package:donationapp/store/account-setting/account.setting.store.dart';
import 'package:donationapp/store/login/login.store.dart';
import 'package:donationapp/store/single-user/single-user.store.dart';
import 'package:donationapp/utils/store-service/language.store.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/common/GoogleButtomNavBar/GoogleButtomNavBar.dart';
import '../certifications/store/certificate.store.dart';

class UserProfile extends ConsumerWidget {
  const UserProfile({super.key});
  // final data;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userId = StorageService.getId();
    final userType = StorageService.getuserType();

    final points = ref.watch(pointsProvider(userId));
    ref.watch(initUserDetailsForUpdate);
    // final userDetails = ref.watch(singleUserDataProvider(userId));
    // final userData = data['body'];
    log("this is from user profile ${userType}");
    handleLogout() {
      ref.read(loginProvider).logout();
      final router = AutoRouter.of(context);
      router.replaceAll(
        [LoginRoute()],
      );
      // replaceRouteTo("/login", context);
      const snackBar = SnackBar(
        content: Text('Logged Out'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    snackBar() {
      final snackBar = SnackBar(
        content: Text('You need minimum of 5 donations to get certificate'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      //pop(context);
    }

    return App(
      appbar: NavBar(
        title: translation(context).profile,
        // route: "/homepage",
        showBadge: true,
      ),
      component: Container(
        color: backgroundColor,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Container(
          padding: EdgeInsets.only(
            top: kPadding.h,
            left: kPadding.w + 20.w,
            right: kPadding.w + 20.w,
          ),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text("data"),
              const UserProfileImage(),
              SizedBox(
                height: 10.h,
              ),
              UserProfileInformation(),
              SizedBox(
                height: 20.h,
              ),
              const HorizontalLine(),
              GestureDetector(
                onTap: () {
                  routeTo("/account-settings", context);
                },
                child: UserProfileOptions(
                  text: translation(context).accountSettings,
                  imageName: "profile-setting",
                ),
              ),
              userType == "ngo"
                  ? const SizedBox()
                  : GestureDetector(
                      onTap: () {
                        //Need to uncomment after jury has gone
                        points.when(
                            data: (data) {
                              return data['body'] < 25
                                  ? snackBar()
                                  : routeTo("/certificatePreview", context);
                            },
                            error: (e, xt) => Text("ërror"),
                            loading: () => Container());
                      },

                      // Container(child: ,)
                      // points == null
                      //     ? () {
                      //         const snackBar = SnackBar(
                      //           content: Text(
                      //               'You need to have atleast five points to get certificate'),
                      //         );
                      //         ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      //         pop(context);
                      //       }
                      //     : () {
                      //         routeTo("/certificatePreview", context);
                      //       }
                      // ,
                      child: UserProfileOptions(
                        text: translation(context).certificates,
                        imageName: "certificate",
                      ),
                    ),
              GestureDetector(
                onTap: () {
                  routeTo("/donations_claim", context);
                  ref.watch(donationClaimRequestsProvider(""));
                },
                child: UserProfileOptions(
                  text: translation(context).donations_claim,
                  imageName: "claim",
                ),
              ),

              userType == "ngo"
                  ? const SizedBox()
                  : GestureDetector(
                      onTap: () {
                        routeTo("/myDonations", context);
                        //ref.watch(donationClaimRequestsProvider(""));
                      },
                      child: UserProfileOptions(
                        text: translation(context).myDonations,
                        imageName: "donation",
                      ),
                    ),
              // GestureDetector(
              //   onTap: () {
              //     routeTo("/change-language", context);
              //   },
              //   child: UserProfileOptions(
              //     text: translation(context).changeLanguage,
              //     imageName: "i-icon",
              //   ),
              // ),

              /// isVolunter ? const SizedBox():
              userType == "ngo"
                  ? const SizedBox()
                  : userType != "volunteer"
                      ? GestureDetector(
                          onTap: () {
                            routeTo("/apply-volunteer", context);
                          },
                          child: UserProfileOptions(
                            text: translation(context).applyVolunter,
                            imageName: "volunteer",
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            routeTo("/see-all-campaigns", context);
                          },
                          child: UserProfileOptions(
                            text: "My Campaigns",
                            imageName: "volunteer",
                          ),
                        ),

              // GestureDetector(
              //   onTap: () {
              //     routeTo("/apply-volunteer", context);
              //   },
              //   child: UserProfileOptions(
              //     text: translation(context).applyVolunter,
              //     imageName: "volunteer",
              //   ),
              // ),
              // GestureDetector(
              //   onTap: () {
              //     // routeTo("/apply-volunteer", context);
              //   },
              //   child: UserProfileOptions(
              //     text: translation(context).applyVolunter,
              //     imageName: "volunteer",
              //   ),
              // ),
              // userType == "admin"
              //     ? GestureDetector(
              //         onTap: () {
              //           routeTo("/admin-dashboard", context);
              //         },
              //         child: UserProfileOptions(
              //           text: "Admin Dashboard",
              //           imageName: "volunteer",
              //         ),
              //       )
              //     : Container(),

              // * This below lines are for leaderboard

              // userType == "user"
              // GestureDetector(
              //   onTap: () {
              //     routeTo("/leaderboard", context);
              //   },
              //   child: UserProfileOptions(
              //     imageName: "i-icon",
              //     text: "Leaderboard",
              //   ),
              // ),
              // : SizedBox(),
              GestureDetector(
                onTap: () {
                  handleLogout();
                },
                child: UserProfileOptions(
                  text: translation(context).logout,
                  imageName: "logout",
                ),
              ),
              // SizedBox(
              //   height: 20.h,
              // ),
              // GestureDetector(
              //   onTap: () {
              //     // handleLogout();
              //     routeTo("/mobile-number", context);
              //   },
              //   child: UserProfileOptions(
              //     text: "OPT",
              //     imageName: "logout",
              //   ),
              // ),
            ],
          ),
        ),
      ),
      isAdmin: false,
      bottomNavBar: const GoogleButtomNavBar(showBottomNavBar: true),
    );
  }
}
