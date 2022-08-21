import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 50,
          ),
          Center(child: Image(image: AssetImage("assets/pic2.png"))),
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
