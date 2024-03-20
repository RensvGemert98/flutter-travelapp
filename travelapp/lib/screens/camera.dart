import 'package:flutter/material.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        toolbarHeight: 80,
        title: const Text(
          "Camera",
          style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 28,
              color: Color(0xff3D3D3D)),
        ),
        foregroundColor: const Color(0xff3D3D3D),
      ),
    );
  }
}
