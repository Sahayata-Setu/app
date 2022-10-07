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
        // controller: _scrollController,
        child: Column(
          children: [widget.component],
        ),
      ),
      // drawer: Drawer(),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: widget.bottomNavBar,
    );
  }
}
// val == HomePageRoute.name
          // ?? FloatingActionButtonLocation.centerDocked,