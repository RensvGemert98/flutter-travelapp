import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        surfaceTintColor: Colors.transparent,
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        toolbarHeight: 80,
        title: const Text(
          "Profile",
          style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 28,
              color: Color(0xff3D3D3D)),
        ),
        foregroundColor: const Color(0xff3D3D3D),
      ),
    );
  }
}
