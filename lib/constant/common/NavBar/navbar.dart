import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart' as badge;
import 'package:donationapp/classes/language.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/main.dart';
import 'package:donationapp/routes/app.router.gr.dart';
import 'package:donationapp/utils/store-service/language.store.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../main.dart';

class NavBar extends StatelessWidget {
  //final isVolunter = StorageService.getUserType
  const NavBar(
      {super.key,
      this.title,
      this.route,
      required this.showBadge,
      this.isAdmin,
      this.isMainPage});
  final title;
  final route;
  final isAdmin;
  final isMainPage;
  // final isVolunter;

  final bool showBadge;
  void onSelected(BuildContext ctx, int item) {}
  @override
  Widget build(BuildContext context) {
    //Get current route
    final route = AutoRouter.of(context).current.name;
    //Get user type
    final userType = StorageService.getuserType();

    return AppBar(
      automaticallyImplyLeading:
          route == LoginRoute.name || route == AdminDashBoardDataRoute.name
              ? false
              : true,
      elevation: 0,
      backgroundColor: blueColor,

      title: CustomText(
        text: title,
        fontSize: 17.sp,
      ),

      leading: route == HomePageRoute.name ||
              route == NewMessageRoute.name ||
              route == NotificationsRoute.name ||
              route == SearchPageRoute.name ||
              route == UserProfileRoute.name
          ? Container(
              margin: EdgeInsets.only(left: 10),
              child: badge.Badge(
                // badgeColor: blueColor,
                badgeStyle: badge.BadgeStyle(
                  badgeColor: blueColor,
                ),
                badgeContent: Image.asset(
                  "assets/images/logo.png",
                  height: 2,
                  width: 2,
                ),
              ),
            )
          :
          // route == HomePageRoute.name ||
          route == LoginRoute.name || route == SignupRoute.name
              // route == MessageRoute.name
              ? const SizedBox()
              : IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
      //leading: isAdmin == null ? const SizedBox.shrink() : Icon(Icons.menu),
      actions: [
        route == HomePageRoute.name || route == LoginRoute.name
            ? Padding(
                padding: EdgeInsets.only(right: kPadding.w, top: 8.h),
                child: DropdownButton<Language>(
                    underline: Container(),
                    icon: const Icon(Icons.language),
                    items: Language.languageList()
                        .map((e) => DropdownMenuItem<Language>(
                            value: e, child: Text(e.name)))
                        .toList(),
                    // value: ,
                    onChanged: (Language? language) async {
                      if (language != null) {
                        Locale _locale =
                            await setLanguagePref(language.languageCode);
                        MyApp.setLocale(
                            context, Locale(language.languageCode, ''));
                      }
                    }),
              )
            : const SizedBox(),
        isAdmin != null
            ? Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w),
                child: IconButton(
                  onPressed: () {
                    routeTo("/search", context);
                  },
                  icon: Icon(Icons.search, size: KiconSize.h),
                ))
            : showBadge
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      badge.Badge(
                        //badgeColor: Colors.orange,
                        badgeContent: const Text(
                          '9',
                          style: TextStyle(color: Colors.white),
                        ),
                        child: Container(
                          margin: EdgeInsets.only(top: 6.h),
                          child: Icon(
                            Icons.star,
                            size: kiconSize2,
                          ),
                        ),
                        // showBadge: showBadge ? true : false,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(kPadding1),
                        child: PopupMenuButton(
                          color: backgroundColor,
                          child: const Icon(
                            Icons.add,
                            size: KiconSize,
                          ),
                          // onSelected: (item)=>onSelected(context,item),
                          itemBuilder: (context) => [
                            PopupMenuItem<int>(
                                child: const Text("Create donation"),
                                onTap: () {
                                  // go to create post item
                                  routeTo("/createDonation", context);
                                }),
                            PopupMenuItem<int>(
                              child: const Text("Create need"),
                              onTap: () {
                                routeTo("/createNeed", context);
                                // go to create request button
                              },
                            ),
                            //check for isVolunteer?SizedBox():
                            if (userType == "volunteer")
                              PopupMenuItem<int>(
                                child: const Text("Create Campaign"),
                                onTap: () {
                                  routeTo("/createCampaign", context);
                                  // go to create request button
                                },
                              )
                            // userType == "volunteer"
                            //     ? PopupMenuItem<int>(
                            //         child: const Text("Create Campaign"),
                            //         onTap: () {
                            //           routeTo("/createCampaign", context);
                            //           // go to create request button
                            //         },
                            //       )
                            //     : PopupMenuItem(child: Text(""))
                          ],
                        ),
                      )
                      // Container(
                      //     margin: EdgeInsets.symmetric(horizontal: 10.w),
                      //     child: IconButton(
                      //       onPressed: () {
                      //         // routeTo("/search", context);
                      //       },
                      //       icon: const Icon(Icons.search, size: KiconSize),
                      //     ))
                    ],
                  )
                : const SizedBox.shrink()
      ],
    );
  }
}
