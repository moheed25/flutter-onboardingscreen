import 'dart:async';
//import 'dart:html';
//import 'package:firebase_login/page1.dart';
import 'package:flutter/material.dart';
import 'package:onboarding_screen/intro.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    // ignore: prefer_const_constructors
    Timer(
      // ignore: prefer_const_constructors
      Duration(
        seconds: 6,
      ),
      () => Navigator.of(context).push(
        MaterialPageRoute(
            // ignore: prefer_const_constructors
            builder: (BuildContext context) => Intro()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(child: Image(image: AssetImage("assets/pic6.jpg"))),
            SizedBox(
              height: 60,
            ),
            Container(
              child: SpinKitFadingCircle(
                size: 80,
                duration: Duration(seconds: 5),
                color: Colors.blue,
              ),
            ),
          ],
        ));
  }
}
