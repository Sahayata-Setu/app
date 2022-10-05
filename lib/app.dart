import 'dart:developer';
import 'package:flutter/material.dart';

import 'package:donationapp/helpers/route.utils.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'package:auto_route/auto_route.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/routes/app.router.gr.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// this component shares the common widget among differnt components like futter
class App extends StatefulWidget {
  final Widget component;
  final Widget appbar;
  final Widget bottomNavBar;
  final isAdmin;
  // ignore: non_constant_identifier_names
  const App(
      {Key? key,
      required this.component,
      required this.appbar,
      required this.bottomNavBar,
      required this.isAdmin})
      : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // this variable determnines whether the back-to-top button is shown or not
  bool _showBackToTopButton = false;
  // scroll controller
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          if (_scrollController.offset >= 400) {
            _showBackToTopButton = true; // show the back-to-top button
          } else {
            _showBackToTopButton = false; // hide the back-to-top button
          }
        });
      });

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose(); // dispose the controller
    super.dispose();
  }

  // This function is triggered when the user presses the back-to-top button
  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(seconds: 3), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    final val = AutoRouter.of(context).current.name;
    // log("this is route${val}");
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: widget.appbar,
      ),
      // drawer: widget.isAdmin != null
      //     ? Drawer(
      //         backgroundColor: blueColor,
      //         child: ListView(
      //             // Important: Remove any padding from the ListView.
      //             padding: EdgeInsets.zero,
      //             children: [
      //               DrawerHeader(
      //                 decoration: BoxDecoration(
      //                     //  color: Colors.blue,
      //                     ),
      //                 child: IconButton(
      //                     onPressed: () {
      //                       Navigator.pop(context);
      //                     },
      //                     icon: Icon(Icons.close)),
      //               ),
      //               ListTile(
      //                 title: const Text(
      //                   'Item 1',
      //                   style: TextStyle(color: blackColor),
      //                 ),
      //                 onTap: () {
      //                   Navigator.pop(context);
      //                 },
      //               ),
      //               ListTile(
      //                   title: const Text('Item 2'),
      //                   onTap: () {
      //                     Navigator.pop(context);
      //                   })
      //             ]),
      //       )
      //     : null,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [widget.component],
        ),
      ),
      // floatingActionButton:
      //     [HomePageRoute.name, AuthCheckWidgetRoute.name].contains(val)
      //         ? SpeedDial(
      //             icon: Icons.add,
      //             activeIcon: Icons.close,
      //             backgroundColor: blueColor,
      //             foregroundColor: whiteColor,
      //             children: [
      //               SpeedDialChild(
      //                 child: Container(width: 80, child: Text("DONATE")),
      //                 shape: RoundedRectangleBorder(
      //                     borderRadius: BorderRadius.circular(5)),
      //                 labelStyle: TextStyle(
      //                   fontSize: 18.0,
      //                 ),
      //                 onTap: () {
      //                   routeTo("/createDonation", context);
      //                 },
      //                 onLongPress: () {},
      //               ),
      //               SpeedDialChild(
      //                 label: 'REQUEST',
      //                 labelStyle: TextStyle(fontSize: 18.0),
      //                 onTap: () {
      //                   routeTo("/createNeed", context);
      //                 },
      //                 onLongPress: () => {},
      //               ),
      //             ],
      //           )
      //         : Container(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: widget.bottomNavBar,
    );
  }
}
// val == HomePageRoute.name
          // ?? FloatingActionButtonLocation.centerDocked,