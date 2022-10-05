import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/certifications/widgets/certeficateCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Certificates extends StatelessWidget {
  const Certificates({super.key});

  @override
  Widget build(BuildContext context) {
    return App(
      component: Container(
          height: ScreenUtil().screenHeight + kPadding1,
          padding: const EdgeInsets.all(kPadding),
          decoration: const BoxDecoration(color: darkBlue),
          child: ListView.builder(
            itemBuilder: (context, index) => Certificate(
              title: "Food",
              date: "2022-07-09",
            ),
            itemCount: 5,
          )),
      appbar: const NavBar(
        title: "Your Certificates",
        showBadge: true,
      ),
      isAdmin: false,
      bottomNavBar: const BottomNavBar(showBottomNavBar: false),
    );
  }
}
