import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/alert-popup.dart';
import 'package:donationapp/features/donations_claim/store/donations_claim.store.dart';
import 'package:donationapp/features/homepage/widgets/heading.dart';
import 'package:donationapp/features/needs/widgets/needDetail.data.dart';
import 'package:donationapp/features/new-message/chat-detail.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/helpers/time.dart';
import 'package:donationapp/routes/app.router.gr.dart';
import 'package:donationapp/utils/store-service/language.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:developer';

import 'package:donationapp/constant/common/Icon/custom-icon.dart';
import 'package:donationapp/constant/common/ImageCarousel/ImageOverlay.dart';
import 'package:donationapp/constant/common/button/cusotm-button.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:line_icons/line_icon.dart';

class NeedsHomeCards extends ConsumerWidget {
  const NeedsHomeCards({super.key, this.singleInfo});

  final singleInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // routePush(NeedDetailRoute(id: singleInfo['_id']), context);
    log("Single Info: $singleInfo");

    final donationClaimRef = ref.watch(donationClaimProvider);
    handleSumbit() async {
      final response = await donationClaimRef.createNeedRequest({
        "recieverId": singleInfo['beneficiary_id'],
        "needPostId": singleInfo['_id']
      });
      // log("Hello ------------------ ${response['message'] == "Request Already exists"}");
      if (response['message'] == "Request already exists") {
        // ignore: use_build_context_synchronously
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return buildPopupDialog(context, "${response['message']}",
                singleInfo['beneficiary_name'], singleInfo['beneficiary_id']);
          },
        );
      } else {
        // ignore: use_build_context_synchronously
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ChatDetailPage(
            name: singleInfo['benificary_name'],
            // sender: senderId,
            reciever: singleInfo['benificary_id'],
          );
        }));
      }
    }

    void _modalBottomSheetMenu(context) {
      showModalBottomSheet(
          shape: const RoundedRectangleBorder(
            // <-- SEE HERE
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(25.0),
            ),
          ),
          context: context,
          builder: (builder) {
            return Container(
              height: 100.h,
              color:
                  Colors.transparent, //could change this to Color(0xFF737373),
              //so you don't have to change MaterialApp canvasColor
              child: Container(
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18.0),
                      topRight: Radius.circular(18.0),
                    ),
                  ),
                  padding: EdgeInsets.only(top: 10.h, left: 10.w, right: 10.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: CustomText(
                          text: "Do you want to create request \nor this need?",
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              handleSumbit();
                            },
                            child: CustomText(
                              text: "Yes",
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.green),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // buildPopupDialog(context);
                              Navigator.pop(context);
                            },
                            child: CustomText(
                              text: "No",
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            );
          });
    }

    return GestureDetector(
      onTap: () {
        routePush(NeedDetailRoute(id: singleInfo['_id']), context);
        // /donations-details/:id
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Container(
          //   height: 100.h,
          //   width: 300.w,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: NetworkImage(singleInfo['images'][0]),
          //     ),
          //   ),
          // ),
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.r),
                topRight: Radius.circular(12.r)),
            child: Container(
              height: 200.h,
              width: 250.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    singleInfo['images'].length == 0
                        ? "https://www.ncenet.com/wp-content/uploads/2020/04/No-image-found.jpg"
                        : singleInfo['images'][0],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 10.w,
              left: 10.w,
              top: 10.h,
            ),
            child: Container(
              width: 230.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: CustomText(
                      text: "${singleInfo['title']}",
                      fontWeight: FontWeight.bold,
                      fontColor: blackColor,
                      fontSize: 18.sp,
                    ),
                  ),
                  Card(
                    color: backgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    elevation: 0,
                    shadowColor: Colors.transparent,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5.h,
                        horizontal: 5.h,
                      ),
                      child: CustomText(
                        text: "${convertToAgo(singleInfo['createdAt'])}",
                        fontSize: 12.sp,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 10.w,
              left: 10.w,
              top: 5.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                LineIcon.mapMarker(),
                SizedBox(
                  width: 5.w,
                ),
                CustomText(
                  text: "${singleInfo['city']}",
                  fontSize: 16.h,
                  fontWeight: FontWeight.normal,
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 10.w, top: 10.h),
            child: Row(
              children: [
                CustomElevatedButton(
                  color: const Color(0xff000C66),
                  width: 90.w,
                  height: 40.h,
                  fn: () {
                    _modalBottomSheetMenu(context);
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) {
                    //   return ChatDetailPage(
                    //     name: singleInfo['beneficiary_name'],
                    //     // sender: senderId,
                    //     reciever: singleInfo['beneficiary_id'],
                    //   );
                    // }));
                    // routeTo(
                    //     "/message/${singleInfo['donor_name']}/${singleInfo['donor_id']}",
                    //     context);
                  },
                  child: Text(
                    'Donate',
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
