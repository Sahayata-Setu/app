import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/horizontal-line/horizontal-line.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/profile/widgets/user-profile-image.dart';
import 'package:donationapp/features/profile/widgets/user-profile-info.dart';
import 'package:donationapp/features/profile/widgets/user-profile-options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return App(
      appbar: NavBar(
        title: "Profile",
        route: "/homepage",
      ),
      component: Container(
        color: blueBackgroundColor,
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
              const UserProfileInformation(),
              SizedBox(
                height: 20.h,
              ),
              const HorizontalLine(),
              const UserProfileOptions(
                text: "Account Settings",
                imageName: "profile-setting",
              ),
              const UserProfileOptions(
                text: "Certificates",
                imageName: "certificate",
              ),
              const UserProfileOptions(
                text: "Donations/Claim",
                imageName: "claim",
              ),
              const UserProfileOptions(
                text: "Change Language",
                imageName: "i-icon",
              ),
              const UserProfileOptions(
                text: "Logout",
                imageName: "logout",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
