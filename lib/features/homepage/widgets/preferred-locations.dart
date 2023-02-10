import 'dart:developer';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/loading/loadingPage.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/Admin/add-preferred-locations/store/add-preferred.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class PreferredLocations extends ConsumerWidget {
  const PreferredLocations({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prefLocation = ref.watch(preferredLocationProvider);

// preferredSingleLocationProvider
    showPopUp(id) {
      final prefSingleLocation = ref.watch(preferredSingleLocationProvider(id));

      return showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Preferred Locations for donations'),
          content: prefSingleLocation.when(
              data: (data) {
                final prefLoca = data['body'];
                // log("Log: $prefLoca");
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "City:",
                      fontWeight: FontWeight.bold,
                    ),
                    CustomText(text: "${prefLoca['city']}"),
                    CustomText(
                      text: "Title:",
                      fontWeight: FontWeight.bold,
                    ),
                    CustomText(text: "${prefLoca['title']}"),
                    CustomText(
                      text: "Address:",
                      fontWeight: FontWeight.bold,
                    ),
                    CustomText(text: "${prefLoca['address']}"),
                    CustomText(
                      text: "Landmark:",
                      fontWeight: FontWeight.bold,
                    ),
                    CustomText(text: "${prefLoca['landmark']}"),
                    CustomText(
                      text: "Contact:",
                      fontWeight: FontWeight.bold,
                    ),
                    CustomText(text: " ${prefLoca['contact']}"),
                  ],
                );
              },
              error: (e, st) => CustomText(text: "Something Went Wrong"),
              loading: () => LoadingPage()),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }

    return Container(
        padding: EdgeInsets.only(
            left: kPadding.w, top: kPadding.h, right: kPadding.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Pereferred Locations",
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 10.h,
            ),
            prefLocation.when(
                data: (data) {
                  final prefLoca = data['body'];
                  // print("prefLoca: $prefLoca");
                  return Container(
                    height: 100.h,
                    width: double.infinity,
                    child: GridView.builder(
                      // physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 120,
                        childAspectRatio: 3 / 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        mainAxisExtent: 200,
                      ),

                      itemBuilder: (ctx, index) {
                        return GestureDetector(
                          onTap: () {
                            showPopUp("${prefLoca[index]['_id']}");
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22.r),
                            ),
                            color: blueColor,
                            child: Container(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    // mainAxisAlignment:
                                    //     MainAxisAlignment.spaceAround,
                                    children: [
                                      LineIcon(LineIcons.landmark,
                                          color: whiteColor),
                                      Flexible(
                                        child: CustomText(
                                          text:
                                              "${prefLoca[index]['landmark']}",
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                          fontColor: whiteColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      LineIcon(LineIcons.mapMarker,
                                          color: whiteColor),
                                      Flexible(
                                        child: CustomText(
                                          text: "${prefLoca[index]['city']}",
                                          fontSize: 16.sp,
                                          fontColor: whiteColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: prefLoca.length,
                    ),
                  );
                },
                error: (error, stackTrace) =>
                    CustomText(text: "Something Went Wrong"),
                loading: () => LoadingPage()),
            SizedBox(
              height: 20.h,
            )
          ],
        ));
  }
}
