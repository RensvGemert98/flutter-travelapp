import 'package:flutter/material.dart';
import 'package:travelapp/pages/signin_signup.dart';

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
                image: AssetImage("assets/background_image.png"),
                fit: BoxFit.cover,
                opacity: 0.9),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(17),
                        topRight: Radius.circular(17))),
                child: const Text(
                  'Document your journey anywhere in the world.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255, 48, 48, 48),
                  ),
                ),
              ),
              Container(
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  decoration: const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
                  child:
                      const Text('Show your friends exactly wherever you are.')),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(20.0, 00, 20, 20),
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(17),
                        bottomRight: Radius.circular(17))),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignInSignUp(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromARGB(255, 43, 43, 43),
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
