import 'package:flutter/material.dart';
import 'package:travelapp/pages/home.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Image.asset(
              'assets/welcome_plane.png',
              width: 350,
              height: 350,
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Explore your journey with us',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 36),
            ),
            const SizedBox(
              height: 70,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 231, 163, 17),
                  foregroundColor: Colors.white,
                  fixedSize: const Size(200, 20),
                  textStyle: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold)),
              child: const Text(
                'Get Started',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
