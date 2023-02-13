import 'dart:developer';
import 'package:donationapp/constant/common/Text/custom-text.dart';

import 'package:donationapp/constant/common/Admin-Drawer/admin-drawer.dart';
import 'package:donationapp/constant/common/NavBar/adminNavBar.dart';
import 'package:donationapp/constant/common/horizontal-line/horizontal-line.dart';
import 'package:donationapp/constant/common/loading/loadingPage.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/drawer.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/optionsTab.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/dashbordCards.dart';
import 'package:donationapp/features/Admin/Users/store/user-details.store.dart';
import 'package:donationapp/features/Admin/Users/widgets/userCard.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:donationapp/app.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:line_icons/line_icon.dart';

class ViewUsers extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userDetails = ref.watch(getAlluserDetailsProvider(""));
    // log("User Details: ${userDetails}");
    ScrollController _scrollController = ScrollController();

    // userDetails.when(
    //   data: (data) {
    //     log("Data: ${data['body']}");
    //   },
    //   loading: () {
    //     log("Loading");
    //   },
    //   error: (e, s) {
    //     log("Error: ${e}");
    //   },
    // );

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AdminNavBar(title: "Users"),
      ),
      drawer: Menu_Drawer(),
      body: Container(
        padding: EdgeInsets.all(10.h),
        // color: whiteColor,
        // height: ScreenUtil().screenHeight,

        // height: MediaQuery.of(context).size.height,

        child: SingleChildScrollView(
          child: Column(
            children: [
              userDetails.when(
                data: (data) {
                  // log("Data: ${data['body']}");
                  final userData = data['body'];
                  return SizedBox(
                    height: ScreenUtil().screenHeight * 0.8,
                    child: ListView.builder(
                      controller: _scrollController,
                      // physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (contex, index) {
                        return InkWell(
                          child: UserCard(
                            userName:
                                "${userData[index]['firstName']} ${userData[index]['lastName']}",
                            userLocation: "${userData[index]['city']}",
                          ),
                          onTap: () {
                            routeTo("/userDetails/${userData[index]["_id"]}",
                                context);
                          },
                        );
                      },
                      itemCount: userData.length,
                    ),
                  );
                },
                error: (e, st) => Text("Something went wrong"),
                loading: () => LoadingPage(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
