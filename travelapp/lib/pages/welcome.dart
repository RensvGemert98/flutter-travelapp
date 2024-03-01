import 'package:flutter/material.dart';
import 'package:travelapp/pages/home.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background-get-started.jpg"),
              fit: BoxFit.cover,
              opacity: 0.6),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20.0),
                  color: Colors.white,
                  child: const Text(
                    'Document your journey anywhere in the world',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 33),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 43, 43, 43),
                    foregroundColor: Colors.white,
                    fixedSize: const Size(200, 20),
                    textStyle: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold)),
                child: const Text(
                  'Get Started',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
