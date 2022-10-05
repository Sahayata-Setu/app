import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/userTab.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/userTabLists.dart';
import 'package:flutter/material.dart';

class OptionsTab extends StatefulWidget {
  const OptionsTab({super.key});

  @override
  State<OptionsTab> createState() => _OptionsTabState();
}

class _OptionsTabState extends State<OptionsTab> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);

    return Expanded(
        child: Column(children: [
      Container(
          //height: 30,
          color: secondaryBlue,
          margin: const EdgeInsets.symmetric(vertical: 15),
          child: TabBar(
              padding: EdgeInsets.only(
                  top: kPadding1, left: kPadding1, right: kPadding1),
              controller: tabController,
              labelColor: whiteColor,
              labelStyle: const TextStyle(),
              indicator: const BoxDecoration(
                color: blackColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kPadding),
                    topRight: Radius.circular(kPadding)),
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              //indicator: ,
              tabs: [
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 8),
                    child: CustomText(text: "Volunters".toUpperCase())),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8),
                  child: CustomText(text: "Donations".toUpperCase()),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8),
                  child: CustomText(text: "Requests".toUpperCase()),
                ),
              ])),
      Expanded(
        child: TabBarView(controller: tabController, children: [
          UsersTab(),
          CustomText(text: "Donations".toUpperCase()),
          CustomText(text: "Requests".toUpperCase()),
        ]),
      )
    ]));
  }
}
