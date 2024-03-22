import 'package:flutter/material.dart';
import 'package:travelapp/screens/navigation.dart';
import 'package:travelapp/screens/welcome.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 239, 239),
      appBar: AppBar(
        centerTitle: false,
        surfaceTintColor: Colors.transparent,
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
          "Sign in",
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
        foregroundColor: const Color(0xff3D3D3D),
        backgroundColor: const Color.fromARGB(255, 239, 239, 239),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: screenHeight * 0.2,
              width: screenWidth * 0.8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  "assets/camper.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
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
                    borderRadius: BorderRadius.circular(15.0),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 0, 17, 255),
                    ),
                  ),
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  fixedSize: const Size(300, 20),
                  textStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/google.png",
                      width: 16,
                      fit: BoxFit.cover,
                    ),
                    const Text(
                      " Sign in with google",
                      style: TextStyle(
                          fontSize: 14, color: Color.fromARGB(255, 0, 17, 255)),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: <Widget>[
                Expanded(
                    child: Divider(
                  indent: 20,
                  endIndent: 20,
                )),
                Text(
                  "OR",
                  style: TextStyle(fontSize: 10),
                ),
                Expanded(
                  child: Divider(
                    indent: 20,
                    endIndent: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              // height: screenHeight * 0.16,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  color: Colors.white),
              child: const Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: SizedBox(
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Color.fromARGB(255, 239, 239, 239),
                          filled: true,
                          border: InputBorder.none,
                          hintText: 'Email',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: SizedBox(
                      height: 40,
                      child: TextField(
                        autofocus: false,
                        decoration: InputDecoration(
                          fillColor: Color.fromARGB(255, 239, 239, 239),
                          filled: true,
                          border: InputBorder.none,
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Navigation(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromARGB(255, 0, 119, 255),
                    fixedSize: Size(screenWidth * 0.8, 20),
                    textStyle: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  child: const Text("Sign in"),
                ))
          ],
        ),
      ),
    );
  }
}
