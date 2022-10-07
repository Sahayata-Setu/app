import 'package:donationapp/constant/common/Icon/custom-icon.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageOverlay extends StatelessWidget {
  ImageOverlay(
      {super.key,
      required this.image,
      required this.title,
      required this.location,
      required this.height,
      required this.width,
      required this.border_radius,
      required this.showShareBtn,
      this.borderTop});
  final image;
  final title;
  final location;
  final double height;
  final double width;
  final bool border_radius;
  final bool showShareBtn;
  final borderTop;
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(
          borderRadius: border_radius
              ? BorderRadius.circular(kPadding1.sp)
              : borderTop == null
                  ? BorderRadius.only(
                      topLeft: Radius.circular(kPadding1.sp),
                      topRight: Radius.circular(kPadding1.sp))
                  : BorderRadius.zero,
          color: Colors.transparent,
          image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
        ),
        height: height, // 250.0,
        width: width, //double.infinity,
      ),
      Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.all(kPadding1),
          height: height, //250.0,
          width: width, //double.infinity,
          decoration: BoxDecoration(
              borderRadius: border_radius
                  ? BorderRadius.circular(kPadding1.sp)
                  : BorderRadius.only(
                      topLeft: Radius.circular(kPadding1.sp),
                      topRight: Radius.circular(kPadding1.sp),
                    ),
              color: Colors.white,
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Colors.grey.withOpacity(0.2),
                  Colors.black.withOpacity(0.6),
                ],
                stops: [0.0, 1.0],
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: title,
                fontColor: whiteColor,
                fontSize: 14.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CustomIcon(
                        icon: Icons.location_on,
                        color: secondaryBlue,
                      ),
                      CustomText(
                        text: location,
                        fontColor: secondaryBlue,
                      ),
                    ],
                  ),
                  showShareBtn
                      ? CustomIcon(
                          icon: Icons.share,
                          color: whiteColor,
                          size: KiconSize,
                        )
                      : SizedBox()
                ],
              ),
            ],
          ))
    ]);
  }
}
