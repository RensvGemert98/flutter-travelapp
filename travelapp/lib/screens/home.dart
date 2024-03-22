import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return PopScope(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          surfaceTintColor: Colors.transparent,
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          toolbarHeight: 80,
          title: const Text(
            "Hi Traveler",
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 28,
                color: Color(0xff3D3D3D)),
          ),
          foregroundColor: const Color(0xff3D3D3D),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                width: screenWidth * 0.6,
                child: const Text(
                    "This is day 5 of your journey in South Africa. ",
                    style: TextStyle(fontSize: 16, color: Color(0xff3D3D3D))),
              ),
              const Text(
                "Weather Today",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Color(0xff3D3D3D)),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                height: screenHeight * 0.23,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.lightBlue.shade100),
              ),
              const Text(
                "Current Journey",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Color(0xff3D3D3D)),
              ),
              Container(
                height: screenHeight * 0.01,
              ),
              SizedBox(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    children: [
                      Container(
                        height: screenHeight * 0.2,
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
                        height: screenHeight * 0.2,
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
                        height: screenHeight * 0.2,
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
      ),
    );
  }
}
