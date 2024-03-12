import 'package:flutter/material.dart';
import 'package:travelapp/pages/home.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.fromLTRB(10, 50, 10, 0),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            image: DecorationImage(
                image: AssetImage("assets/welcome.png"),
                alignment: Alignment.topCenter,
                scale: 1.4,
                fit: BoxFit.scaleDown),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: const Text(
                  'Welcome',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff3D3D3D),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255)),
                alignment: Alignment.center,
                child: const Text(
                  'Document your journey anywhere you go.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Color(0xff3D3D3D)),
                ),
              ),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
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
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
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
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: double.infinity,
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 30),
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
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 0, 17, 255))),
                            foregroundColor: Colors.white,
                            backgroundColor:
                                const Color.fromARGB(255, 255, 255, 255),
                            fixedSize: const Size(300, 20),
                            textStyle: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/google.png",
                              width: 16,
                              fit: BoxFit.cover,
                            ),
                            const Text(
                              " Sign up with google",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 17, 255)),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
