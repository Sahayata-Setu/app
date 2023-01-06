import 'package:auto_route/auto_route.dart';
import 'package:donationapp/constant/common/GoogleButtomNavBar/GoogleButtomNavBar.dart';
import 'package:donationapp/constant/common/Icon/custom-icon.dart';
import 'package:donationapp/constant/common/horizontal-line/horizontal-line.dart';
import 'package:donationapp/constant/common/loading/loadingPage.dart';
import 'package:donationapp/store/homepage/homepage.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:donationapp/constant/common/ImageCarousel/image_carousel.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';

import '../../../../app.dart';
import '../../../../constant/common/NavBar/navbar.dart';

class NeedDetail extends ConsumerWidget {
  const NeedDetail({super.key, this.data, @PathParam('id') this.id});
  final data;
  final id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final singleData = data['body'];
    // log("this is from data ${data['quantity']}");

    // DateFormat('yyyy-MM-dd').format(selectedDate)
    // final date = singleData['pickupDate'].split("T");
    final data1 = ref.watch(singleNeedDataProvider(id));

    return App(
      component: data1.when(
        data: (data) {
          // log("this is id -------------------------- ${id}");
          final singleData = data['body'];
          final date = singleData['pickupDate'].split("T");

          return Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(bottom: kMargin.h),
              // height: ScreenUtil().screenHeight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageCarousel(
                    data: data,
                  ),
                  Padding(
                    padding: EdgeInsets.all(kPadding1.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          title: CustomText(
                            text: "Name",
                            fontColor: Colors.grey.shade600,
                          ),
                          trailing: CustomText(
                            text: "${singleData['beneficiary_name']}",
                            fontWeight: FontWeight.w500,
                            fontSize: 15.sp,
                          ),
                        ),
                        ListTile(
                          title: CustomText(
                            text: "Category",
                            fontColor: Colors.grey.shade600,
                          ),
                          trailing: CustomText(
                            text: "${singleData['category']}",
                            fontWeight: FontWeight.w500,
                            fontSize: 15.sp,
                          ),
                        ),
                        ListTile(
                          title: CustomText(
                            text: "Quantity",
                            fontColor: Colors.grey.shade600,
                          ),
                          trailing: CustomText(
                            text:
                                "${singleData['quantity']}", //"${singleData['quantity']}",
                            fontWeight: FontWeight.w500,
                            fontSize: 15.sp,
                          ),
                        ),
                        ListTile(
                          title: CustomText(
                            text: "Created at",
                            fontColor: Colors.grey.shade600,
                          ),
                          trailing: CustomText(
                            text:
                                "${date[0]}", //"${singleData['pickupDetails']}",
                            // singleData['pickupDate']
                            fontWeight: FontWeight.w500,
                            fontSize: 15.sp,
                          ),
                        ),
                        ListTile(
                          title: CustomText(
                            text: "Pickup Details",
                            fontColor: Colors.grey.shade600,
                          ),
                          trailing: CustomText(
                            text: "${singleData['pickupDetails']}",
                          ),
                        ),
                        ListTile(
                            title: CustomText(
                              text: "Contact Beneficiary",
                              fontColor: Colors.grey.shade600,
                            ),
                            trailing: CustomIcon(
                              icon: Icons.message,
                              color: blueColor,
                            )),
                        ListTile(
                            title: CustomText(
                              text: "Helpline",
                              fontColor: Colors.grey.shade600,
                            ),
                            trailing: CustomIcon(
                              icon: Icons.message,
                              color: blueColor,
                            )),
                        HorizontalLine(),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: CustomText(
                            fontSize: 16.sp,
                            text: "Description",
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        CustomText(
                          fontSize: 14.sp,
                          text: "${singleData['description']}",
                        )
                      ],
                    ),
                  )
                ],
              ));
        },
        error: (error, stackTrace) => Center(
          child: Text("Something went wrong!!"),
        ),
        loading: () => LoadingPage(),
      ),
      appbar: const NavBar(
        title: "Need Detatil",
        showBadge: false,
      ),
      isAdmin: false,
      bottomNavBar: const GoogleButtomNavBar(showBottomNavBar: false),
    );
    ;
  }
}
