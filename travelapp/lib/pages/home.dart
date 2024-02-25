import 'package:flutter/material.dart';

//stl
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Travel Guide"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 35, 33, 71),
        foregroundColor: Colors.white,
      ),
    );
  }
}