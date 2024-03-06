import 'package:flutter/material.dart';
import 'package:travelapp/components/app_bar.dart';
import 'package:travelapp/components/bottom_nav_bar.dart';

//stl
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }
}
