import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/routes/app.router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavBar extends StatelessWidget {
  const NavBar(
      {super.key,
      this.title,
      this.route,
      required this.showBadge,
      this.isAdmin});
  final title;
  final route;
  final isAdmin;

  final bool showBadge;
  void onSelected(BuildContext ctx, int item) {}
  @override
  Widget build(BuildContext context) {
    final route = AutoRouter.of(context).current.name;
    return AppBar(
      automaticallyImplyLeading: route == LoginRoute.name ? false : true,
      elevation: 0,
      backgroundColor: blueColor,
      title: CustomText(
        text: title,
        fontSize: 17.sp,
      ),

      //leading: isAdmin == null ? const SizedBox.shrink() : Icon(Icons.menu),
      actions: [
        isAdmin != null
            ? Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w),
                child: IconButton(
                  onPressed: () {
                    routeTo("/search", context);
                  },
                  icon: Icon(Icons.search, size: KiconSize.h),
                ))
            :
            // : showBadge
            //     ?
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Badge(
                    badgeColor: Colors.orange,
                    badgeContent: const Text(
                      '9',
                      style: TextStyle(color: Colors.white),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: 6.h),
                      child: Icon(
                        Icons.star,
                        size: kiconSize2,
                      ),
                    ),
                    // showBadge: showBadge ? true : false,
                  ),
                  Padding(
                    padding: EdgeInsets.all(kPadding1),
                    child: PopupMenuButton(
                        color: backgroundColor,
                        child: Icon(
                          Icons.add,
                          size: KiconSize,
                        ),
                        // onSelected: (item)=>onSelected(context,item),
                        itemBuilder: (context) => [
                              PopupMenuItem<int>(
                                  child: Text("Create donation"),
                                  onTap: () {
                                    // go to create post item
                                    routeTo("/createDonation", context);
                                  }),
                              PopupMenuItem<int>(
                                child: Text("Create need"),
                                onTap: () {
                                  routeTo("/createNeed", context);
                                  // go to create request button
                                },
                              )
                            ]),
                  )
                  // Container(
                  //     margin: EdgeInsets.symmetric(horizontal: 10.w),
                  //     child: IconButton(
                  //       onPressed: () {
                  //         // routeTo("/search", context);
                  //       },
                  //       icon: const Icon(Icons.search, size: KiconSize),
                  //     ))
                ],
              )
        // : const SizedBox.shrink()
      ],
    );
  }
}
