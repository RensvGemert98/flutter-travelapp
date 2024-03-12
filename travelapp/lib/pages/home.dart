import 'package:flutter/material.dart';
import 'package:travelapp/components/bottom_nav_bar.dart';

//stl
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar(),
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 50, color: const Color.fromARGB(255, 255, 255, 255)),
            Container(
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
            const SizedBox(
              height: 80,
              width: 350,
              child: Text(
                  "This is day 5 of your journey in South Africa. ",
                  style: TextStyle(fontSize: 20, color: Color(0xff3D3D3D))),
            ),
            Container(
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
              margin: const EdgeInsets.fromLTRB(0, 15, 0, 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.lightBlue.shade100),
            ),
            Container(
              height: 45,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: const Text(
                "Current journey",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Color(0xff3D3D3D)),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: SizedBox(
                // margin: const EdgeInsets.symmetric(vertical: 20),
                height: 165,
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 320,
                      color: Colors.green.shade300,
                      child: Image.asset(
                        "assets/places/macmacfalls.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: 320,
                      color: Colors.green.shade300,
                      child: Image.asset(
                        "assets/places/lisbonfalls.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: 320,
                      color: Colors.green,
                    ),
                    Container(
                      width: 320,
                      color: Colors.yellow,
                    ),
                    Container(
                      width: 320,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
