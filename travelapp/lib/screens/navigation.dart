import 'package:flutter/material.dart';
import 'package:travelapp/screens/diary.dart';
import 'package:travelapp/screens/home.dart';
import 'package:iconsax/iconsax.dart';
import 'package:travelapp/screens/profile.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const DiaryScreen(),
    const DiaryScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          currentIndex: _selectedIndex,
          onTap: (int newIndex) {
            setState(() {
              _selectedIndex = newIndex;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Iconsax.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(icon: Icon(Iconsax.book), label: 'Diary'),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.camera), label: 'Camera'),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.personalcard), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
