import 'package:flutter/material.dart';
import 'package:one_above_tv/Pages/DestinationPage.dart';
import 'package:one_above_tv/Pages/GenderPage.dart';
import 'package:one_above_tv/Pages/HomePage.dart';
import 'package:one_above_tv/Pages/PreviewPage.dart';
import 'package:one_above_tv/Pages/RegistrationPage.dart';
import 'package:one_above_tv/Pages/StrikePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // home: RegistrationPage(),
      //home: GenderPage(),
      //home: DestinationPage(),
      //home: StrikePage(),
      //home: PreviewPage(),
    );
  }
}
