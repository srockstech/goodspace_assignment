import 'package:flutter/material.dart';
import 'package:goodspace_assignment/constants.dart';
import 'package:goodspace_assignment/screens/hire_tab_screen.dart';
import 'package:goodspace_assignment/screens/premium_tab_screen.dart';
import 'package:goodspace_assignment/screens/social_tab_screen.dart';
import 'package:goodspace_assignment/screens/work_tab_screen.dart';

import 'donors_tab_screen.dart';

// home screen having navigation bar at the bottom of the screen with 5 navigation items: Work, Hire, Social, Donors, Premium.
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _currentIndex = 0;

  static const _widgetOptions = <Widget>[
    WorkTabScreen(),
    HireTabScreen(),
    SocialTabScreen(),
    DonorsTabScreen(),
    PremiumTabScreen()
  ];

  void onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _widgetOptions.elementAt(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          unselectedLabelStyle:
              const TextStyle(color: kGrey, fontWeight: FontWeight.w500),
          selectedLabelStyle:
              const TextStyle(color: kBlue, fontWeight: FontWeight.w500),
          showUnselectedLabels: true,
          selectedIconTheme: const IconThemeData(color: kBlue),
          unselectedIconTheme: const IconThemeData(color: kGrey),
          showSelectedLabels: true,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          backgroundColor: Colors.white,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.work_outline_rounded, size: 25),
              activeIcon: Icon(Icons.work_outline_rounded, size: 25),
              label: 'Work',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.handshake_outlined, size: 25),
              activeIcon: Icon(Icons.handshake_outlined, size: 25),
              label: 'Hire',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_outlined, size: 25),
              activeIcon: Icon(Icons.people_alt_outlined, size: 25),
              label: 'Social',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bloodtype_outlined, color: kLightRed, size: 25),
              activeIcon: Icon(Icons.bloodtype, color: kLightRed, size: 25),
              label: 'Donors',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.diamond_sharp, size: 25),
              activeIcon: Icon(Icons.diamond_sharp, size: 25),
              label: 'Premium',
            ),
          ],
        ));
  }
}
