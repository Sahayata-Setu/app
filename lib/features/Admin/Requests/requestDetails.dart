import 'package:donationapp/constant/common/NavBar/adminNavBar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/User/user-profile-dark-image.dart';
import 'package:donationapp/constant/common/button/cusotm-button.dart';
import 'package:donationapp/constant/common/button/primary-custom-botton.dart';
import 'package:donationapp/constant/common/horizontal-line/horizontal-line.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/drawer.dart';
import 'package:donationapp/features/Admin/Requests/widgets/userData.dart';
import 'package:donationapp/features/Admin/Users/widgets/detailTile.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icon.dart';

class RequestDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AdminNavBar(title: "Requests"),
      ),
      drawer: Menu_Drawer(),
      body: Container(
        margin: EdgeInsets.all(10.h),
        child: Column(
          children: [
            Container(
              height: 35.h,
              margin: EdgeInsets.only(bottom: 10.h),
              child: UserData(),
            ),
            Card(
              child: Container(
                margin: EdgeInsets.all(10.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DetailTile(title: "Category", value: "Foods"),
                    DetailTile(title: "Date", value: "2023/01/22"),
                    DetailTile(title: "Contact", value: "98xxxxxxxx"),
                    Container(
                      margin: EdgeInsets.only(bottom: 20.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "Beneficiary",
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            fontColor: textColor,
                          ),
                          InkWell(
                            child: LineIcon.facebookMessenger(
                              size: 20.sp,
                            ),
                            onTap: () {
                              replaceRouteTo("", context);
                            },
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10.h),
                      child: HorizontalLine(
                        color: blueColor,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(bottom: 10.h),
                      child: CustomText(
                        text: "Description",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    CustomText(
                      text:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem  Ipsum has been the industry's  standard dummy text ever  since the 1500s",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      fontColor: textColor,
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  PrimaryCustomButton(
                    child: CustomText(
                      text: "Allow",
                      fontSize: 16.sp,
                    ),
                    color: blueColor,
                    fn: () {
                      routeTo("", context);
                    },
                  ),
                  PrimaryCustomButton(
                    child: CustomText(
                      text: "Remove",
                      fontSize: 16.sp,
                    ),
                    color: Colors.red,
                    fn: () {
                      routeTo("", context);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
