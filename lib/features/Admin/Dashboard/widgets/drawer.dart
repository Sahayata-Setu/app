import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Menu_Drawer extends StatelessWidget {
  const Menu_Drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: blueColor,
      child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  //color: Colors.blue,
                  ),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close)),
            ),
            ListTile(
              title: const Text(
                'Item 1',
                style: TextStyle(color: blackColor),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  Navigator.pop(context);
                })
          ]),
    );
  }
}
