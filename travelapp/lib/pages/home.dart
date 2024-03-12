import 'package:flutter/material.dart';
import 'package:travelapp/components/bottom_nav_bar.dart';

//stl
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 50, color: const Color.fromARGB(255, 255, 255, 255)),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            height: 60,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: const Text(
              "Hi Traveler",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Color(0xff3D3D3D)),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            height: 80,
            width: 350,
            child: const Text("This is day 5 of your journey in South Africa. ",
                style: TextStyle(fontSize: 20, color: Color(0xff3D3D3D))),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            height: 30,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: const Text(
              "Weather Today",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color(0xff3D3D3D)),
            ),
          ),
          Container(
            height: 100,
            margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.lightBlue.shade100),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            height: 30,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: const Text(
              "Current journey",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color(0xff3D3D3D)),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            height: 120,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 160,
                  color: Colors.red,
                ),
                Container(
                  width: 160,
                  color: Colors.blue,
                ),
                Container(
                  width: 160,
                  color: Colors.green,
                ),
                Container(
                  width: 160,
                  color: Colors.yellow,
                ),
                Container(
                  width: 160,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
