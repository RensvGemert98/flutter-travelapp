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
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hi Traveler",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color(0xff3D3D3D)),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: const Text(
                  "This is day 5 of your journey in South Africa. ",
                  style: TextStyle(fontSize: 16, color: Color(0xff3D3D3D))),
            ),
            const Text(
              "Weather Today",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color(0xff3D3D3D)),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.lightBlue.shade100),
            ),
            const Text(
              "Current journey",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color(0xff3D3D3D)),
            ),
            const SizedBox(height: 10,),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: SizedBox(
                height: 220,
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    Container(
                      height: 180,
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "assets/places/macmacfalls.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "assets/places/lisbonfalls.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "assets/places/zebra.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
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
