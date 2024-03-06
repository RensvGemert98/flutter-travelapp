import 'package:flutter/material.dart';
  
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