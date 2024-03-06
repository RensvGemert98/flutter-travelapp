import 'package:flutter/material.dart';

class SignInSignUp extends StatelessWidget {
  const SignInSignUp({super.key});

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
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromARGB(255, 43, 43, 43),
                      fixedSize: const Size(300, 20),
                      textStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold)),
                  child: const Text(
                    'Create a new account',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              // const Divider(indent: 30, endIndent: 30,),
              Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 40),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        foregroundColor: Colors.white,
                        backgroundColor:
                            const Color.fromARGB(255, 255, 255, 255),
                        fixedSize: const Size(300, 20),
                        textStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    child: const Text(
                      'Log in',
                      style: TextStyle(color: Color.fromARGB(255, 43, 43, 43)),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}