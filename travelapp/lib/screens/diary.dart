import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DiaryScreen extends StatelessWidget {
  const DiaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Diaries",
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
        foregroundColor: const Color(0xff3D3D3D),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: ListView(
          children: [
            ListTile(
              title: const Text("Diary 1"),
              tileColor: Colors.grey.shade100,
              leading: const Icon(Iconsax.book),
              contentPadding: const EdgeInsets.all(10),
            ),
            ListTile(
              title: const Text("Diary 2"),
              tileColor: Colors.grey.shade100,
              leading: const Icon(Iconsax.book),
              contentPadding: const EdgeInsets.all(10),
            ),
            ListTile(
              title: const Text("Diary 3"),
              tileColor: Colors.grey.shade100,
              leading: const Icon(Iconsax.book),
              contentPadding: const EdgeInsets.all(10),
            ),
            ListTile(
              title: const Text("Diary 4"),
              tileColor: Colors.grey.shade100,
              leading: const Icon(Iconsax.book),
              contentPadding: const EdgeInsets.all(10),
            ),
            ListTile(
              title: const Text("Diary 5"),
              tileColor: Colors.grey.shade100,
              leading: const Icon(Iconsax.book),
              contentPadding: const EdgeInsets.all(10),
            ),
          ],
        ),
      ),
    );
  }
}
