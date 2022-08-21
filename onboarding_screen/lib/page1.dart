//import 'dart:html';

import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 70,
          ),
          Center(child: Image(image: AssetImage("assets/pic1.png"))),
          SizedBox(
            height: 30,
          ),
          Text(
            "Introduction",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "  Lorem ipsum dolor sit amet, consectetur adipiscing \n"
            " elit. Nisi nulla purus neque quisque dictum dui.\n"
            " Accumsan fames adipiscing. ",
            style: TextStyle(
              // fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
