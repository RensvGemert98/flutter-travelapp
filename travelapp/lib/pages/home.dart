import 'package:flutter/material.dart';

//stl
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }

  BottomNavigationBar bottomNavigationBar() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home), 
          label: 'Home'),
        BottomNavigationBarItem(
          icon: Icon(Icons.travel_explore_sharp), 
          label: 'Travel'),
        BottomNavigationBarItem(
          icon: Icon(Icons.person), 
          label: 'Profile'),
      ],
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        "Travel Guide",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 35, 33, 71),
      foregroundColor: Colors.white,
    );
  }
}
