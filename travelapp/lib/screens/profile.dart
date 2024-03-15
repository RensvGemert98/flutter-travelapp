import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
      child: const Text(
        "Profile",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Color(0xff3D3D3D)),
      ),
    ));
  }
}
