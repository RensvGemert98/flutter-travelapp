import 'package:flutter/material.dart';
import 'package:travelapp/screens/signin.dart';
import 'package:travelapp/screens/signup.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Container(
          height: screenHeight,
          width: screenWidth,
          margin: const EdgeInsets.fromLTRB(20, 50, 20, 0),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
            image: DecorationImage(
              image: AssetImage("assets/welcome.png"),
              alignment: Alignment.topCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'Welcome',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w900,
                  color: Color(0xff3D3D3D),
                ),
              ),
              Container(
                height: screenHeight * 0.02,
              ),
              Container(
                width: screenWidth * 0.8,
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255)),
                alignment: Alignment.center,
                child: const Text(
                  'Document your journey anywhere you go.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Color(0xff3D3D3D)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Signup(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: const BorderSide(
                                  color: Color.fromARGB(255, 0, 17, 255))),
                          foregroundColor: Colors.white,
                          backgroundColor:
                              const Color.fromARGB(255, 255, 255, 255),
                          fixedSize: const Size(300, 20),
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Create an account",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 17, 255)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 30),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Signin(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          foregroundColor: Colors.white,
                          backgroundColor:
                              const Color.fromARGB(255, 0, 17, 255),
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sign in',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.1,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
