  import 'package:flutter/material.dart';
  
  BottomNavigationBar bottomNavigationBar() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.travel_explore_sharp), label: 'Explore'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
    );
  }