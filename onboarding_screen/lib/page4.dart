import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 10,
          ),
          Center(child: Image(image: AssetImage("assets/pic4.png"))),
          SizedBox(
            height: 20,
          ),
          Text(
            "Introduction",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          SizedBox(
            height: 10,
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
