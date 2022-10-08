import 'package:donationapp/constant/common/Icon/custom-icon.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/horizontal-line/horizontal-line.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserList extends StatelessWidget {
  const UserList(
      {super.key,
      required this.title,
      this.createdAt,
      required this.city,
      required this.icons});
  final title;
  final createdAt;
  final city;
  final icons;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        routeTo("/users/:id", context);
      },
      child: Container(
        //padding: EdgeInsets.all(10),
        height: 60,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kPadding),
            color: secondaryBlue),
        child: ListTile(
          title: CustomText(
            text: title,
            fontColor: whiteColor,
            fontWeight: FontWeight.w800,
          ),
          subtitle: CustomText(
            text: city,
          ),
          leading: CustomIcon(
            icon: icons,
            color: whiteColor,
            size: 30.sp,
          ),
          // trailing: CustomText(
          //   text: createdAt,
          //   // fontColor: whiteColor,
          // ),
        ),
      ),
    );
  }
}


// Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//                 Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(right: 5.0),
//                       child: CustomIcon(
//                         icon: icons,
//                         color: whiteColor,
//                       ),
//                     ),
//                     CustomText(
//                       text: title,
//                       fontColor: whiteColor,
//                       fontWeight: FontWeight.w800,
//                     ),
//                   ],
//                 ),
//                 CustomText(
//                   text: createdAt,
//                 )
//               ]),
//               CustomText(
//                 text: city,
//               )
//             ],
//           )