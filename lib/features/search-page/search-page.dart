import 'dart:developer';

import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/loading/loadingPage.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/homepage/widgets/donations/donationHomeCards.dart';
import 'package:donationapp/features/search-page/store/search-page.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/common/GoogleButtomNavBar/GoogleButtomNavBar.dart';

class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({super.key});
  @override
  ConsumerState<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  // @override
  // void dispose() {
  //   TODO: implement dispose
  //   ref.read(seachControllerProvider.notifier).state.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final searchController = ref.watch(seachControllerProvider);
    // searchController.text.isNotEmpty ?
    final searchResult = ref.watch(searchProvider(searchController.text));
    // log("Search Field:${searchResult}");

    return App(
      component: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        color: backgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade600,
                    size: 20,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey.shade100)),
                ),
              ),
            ),
            searchResult.when(
              data: (data) {
                log("Data: ${data['body']['all']['data']}");
                final allSearchResult = data['body']['all']['data'].toList();
                return allSearchResult.isNotEmpty
                    ? Container(
                        height: MediaQuery.of(context).size.height - 200,
                        child: ListView.builder(
                          // physics: NeverScrollableScrollPhysics(),
                          // shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                                margin: EdgeInsets.only(
                                  left: kPadding.w + 20.w,
                                  right: kPadding.w + 40.w,
                                  bottom: kPadding.h,
                                  top: kPadding.h,
                                ),
                                // padding: EdgeInsets.only(right: kPadding.w),
                                child: Card(
                                  margin: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.r),
                                  ),
                                  elevation: 0,
                                  shadowColor: Colors.transparent,
                                  child: DonationHomeCards(
                                    singleInfo: allSearchResult[index],
                                  ),
                                ));
                          },
                          itemCount: allSearchResult.length,
                        ),
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 100.h),
                          CustomText(
                            text: "No results found",
                            fontSize: 22.sp,
                          ),
                        ],
                      );
              },
              loading: () => LoadingPage(),
              error: (e, st) => Text(""),
            )
          ],
        ),
      ),
      appbar: const NavBar(
        showBadge: true,
        title: "Search",
        // route: "/homepage",
      ),
      isAdmin: false,
      bottomNavBar: const GoogleButtomNavBar(showBottomNavBar: true),
    );
  }
}
