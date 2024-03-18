import 'package:flutter/material.dart';
import 'package:travelapp/screens/welcome.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 162, 162, 162),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xff3D3D3D),
          ),
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((context) => const WelcomeScreen()),
            ),
          ),
        ),
        title: const Text(
          "Sign In",
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
        foregroundColor: const Color(0xff3D3D3D),
        backgroundColor: const Color.fromARGB(255, 162, 162, 162),
      ),
    );
  }
}
