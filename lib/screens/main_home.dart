// ignore_for_file: camel_case_types

import 'package:bottom_navbar/screens/home.dart';
import 'package:bottom_navbar/screens/profile.dart';
import 'package:bottom_navbar/screens/scan.dart';
import 'package:bottom_navbar/screens/shope.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Main_Home extends StatefulWidget {
  const Main_Home({Key? key}) : super(key: key);

  @override
  State<Main_Home> createState() => _Main_HomeState();
}

class _Main_HomeState extends State<Main_Home> {
  final items = const [
    Icon(
      Icons.home_outlined,
      size: 35,
      color: Colors.deepPurple,
    ),
    Icon(
      Icons.shopping_cart_checkout_rounded,
      size: 35,
      color: Colors.deepPurple,
    ),
    Icon(
      Icons.qr_code_scanner_rounded,
      size: 35,
      color: Colors.deepPurple,
    ),
    Icon(
      Icons.account_circle_outlined,
      size: 35,
      color: Colors.deepPurple,
    )
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.white,
        color: Colors.white,
        items: items,
        index: index,
        onTap: (selctedIndex) {
          setState(() {
            index = selctedIndex;
          });
        },
        height: 65.0,
        backgroundColor: Colors.deepPurple,
        animationDuration: const Duration(milliseconds: 250),
        // animationCurve: ,
      ),
      body: Container(
          color: Colors.deepPurple,
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: getSelectedWidget(index: index)),
    );
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = const Home();
        break;
      case 1:
        widget = const Shope();
        break;
      case 2:
        widget = const Scan();
        break;
      default:
        widget = const Profile();
        break;
    }
    return widget;
  }
}
