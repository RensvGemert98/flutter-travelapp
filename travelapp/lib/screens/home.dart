import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
              width: 220,
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
              "Current Journey",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color(0xff3D3D3D)),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 600, // Set a specific height for the ListView
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  children: [
                    Container(
                      height: 170,
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
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