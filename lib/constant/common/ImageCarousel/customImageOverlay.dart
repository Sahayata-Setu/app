import 'package:donationapp/constant/common/Icon/custom-icon.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/button/cusotm-button.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomImageOverlay extends StatelessWidget {
  CustomImageOverlay({
    super.key,
    required this.image,
    //required this.action
  });
  final image;
  //VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          // image: DecorationImage(
          //   fit: BoxFit.cover,
          //   image: AssetImage(
          //     image.toString(),
          //   ),
          // ),
        ),
        child: Image(image: AssetImage(image)),
        // height: 250.h, // 250.0,
        // width: 250.w, //double.infinity,
      ),
      Container(
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.all(kPadding1),
        // height: 250.h, //350.0,
        // width: 250.w, //double.infinity,
        decoration: BoxDecoration(
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
      )
    ]);
  }
}
