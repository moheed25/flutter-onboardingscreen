import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 30,
          ),
          Center(child: Image(image: AssetImage("assets/pic3.png"))),
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
