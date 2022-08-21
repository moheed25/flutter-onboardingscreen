import 'dart:html';
import 'package:flutter/material.dart';
//import 'package:onboarding_screen/intro.dart';
import 'package:onboarding_screen/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
