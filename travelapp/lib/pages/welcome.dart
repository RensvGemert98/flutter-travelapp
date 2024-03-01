import 'package:flutter/material.dart';
import 'package:travelapp/pages/home.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background-get-started.jpg"),
                fit: BoxFit.cover,
                opacity: 0.9),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(20.0),
                height: 200,
                margin: const EdgeInsets.fromLTRB(20.0, 00, 20, 0),
                color: Colors.white,
                child: const Text(
                  'Document your journey anywhere in the world',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 33, fontWeight: FontWeight.w900, color: Color.fromARGB(255, 48, 48, 48)),
                ),
              ),
              Container(
                color: Colors.white,
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(20.0, 00, 20, 20),
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
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      fixedSize: const Size(200, 20),
                      textStyle: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  child: const Text(
                    'Get Started',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
