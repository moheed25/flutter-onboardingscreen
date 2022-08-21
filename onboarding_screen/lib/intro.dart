import 'package:flutter/material.dart';
import 'package:onboarding_screen/page1.dart';
import 'package:onboarding_screen/page2.dart';
import 'package:onboarding_screen/page3.dart';
import 'package:onboarding_screen/page4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [Page1(), Page2(), Page3(), Page4()],
          ),
          SizedBox(
            width: 80,
          ),
          Container(
              alignment: Alignment(0.55, 0.89),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },
                      child: Text(
                        'skip',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  SmoothPageIndicator(
                      controller: _controller, // PageController
                      count: 4,
                      effect: JumpingDotEffect(
                        dotColor: Colors.grey,
                        activeDotColor: Colors.blue,
                        jumpScale: 2.5,
                      ), // your preferred effect
                      onDotClicked: (index) {}),
                  GestureDetector(
                    onTap: () {
                      _controller.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    },
                    child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Color(0xff2EA3F8),
                          borderRadius: BorderRadius.circular(10),
                          // gradient: LinearGradient(
                          //   colors: [Colors.purple, Colors.blue],
                          //   begin: Alignment.bottomLeft,
                          //   end: Alignment.topRight,
                          // ),
                        ),
                        child: Center(
                          child: Text(
                            'next',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
