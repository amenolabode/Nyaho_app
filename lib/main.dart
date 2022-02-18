import 'package:flutter/material.dart';
import 'package:nyaho/DoctorList_Page.dart';
import 'package:nyaho/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          ),
      home: const LandingPage(),
      // routes: {
      //   '/home': (context) => const LandingPage(),
      //   '/doctorlist': (context) => DoctorListPage(),
      // },
    );
  }
}
