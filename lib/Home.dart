import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:nyaho/Components/Home_square_card.dart';
import 'package:nyaho/Home_Page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int index = 0;
  final screens = [
    MyHomePage(),
    const Center(
      child: Text("Search"),
    ),
    const Center(
      child: const Text("Cal"),
    ),
    const Center(
      child: Text("Prof"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(left: 4.0),
          child: Text(
            "Hello Amen",
            style: TextStyle(
                color: Color(0xff222B45),
                fontFamily: "Poppins",
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.calendar_today,
              color: Color(0xff222B45),
              size: 24,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.more_vert,
              color: Color(0xff222B45),
              size: 28,
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue[100],
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
                fontSize: 12,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,
                color: Color(0xffB1BBC3)),
          ),
        ),
        child: NavigationBar(
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          backgroundColor: const Color(0xffF1F4FF),
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(Icons.search_outlined),
              selectedIcon: Icon(Icons.search),
              label: "Search",
            ),
            NavigationDestination(
              icon: Icon(Icons.calendar_today_outlined),
              selectedIcon: Icon(Icons.calendar_today),
              label: "Calendar",
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outline),
              selectedIcon: Icon(Icons.person),
              label: "Profile",
            )
          ],
        ),
      ),
    );
  }
}
