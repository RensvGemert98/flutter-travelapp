import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DiaryScreen extends StatelessWidget {
  const DiaryScreen({super.key}); // Corrected constructor syntax

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        
        toolbarHeight: 100,
        title: const Text(
          "Diaries",
          style: TextStyle(
            fontWeight: FontWeight.w900, fontSize: 32, color: Color(0xff3D3D3D) 
          ),
        ),
        foregroundColor: const Color(0xff3D3D3D),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
        children: [
          ListTile(
            title: const Text("Diary 1"),
            tileColor: Colors.grey.shade100,
            leading: const Icon(Iconsax.book), // Corrected icon reference
            contentPadding: const EdgeInsets.all(10),
          ),
          ListTile(
            title: const Text("Diary 2"),
            tileColor: Colors.grey.shade100,
            leading: const Icon(Iconsax.book), // Corrected icon reference
            contentPadding: const EdgeInsets.all(10),
          ),
          ListTile(
            title: const Text("Diary 3"),
            tileColor: Colors.grey.shade100,
            leading: const Icon(Iconsax.book), // Corrected icon reference
            contentPadding: const EdgeInsets.all(10),
          ),
          ListTile(
            title: const Text("Diary 4"),
            tileColor: Colors.grey.shade100,
            leading: const Icon(Iconsax.book), // Corrected icon reference
            contentPadding: const EdgeInsets.all(10),
          ),
          ListTile(
            title: const Text("Diary 5"),
            tileColor: Colors.grey.shade100,
            leading: const Icon(Iconsax.book), // Corrected icon reference
            contentPadding: const EdgeInsets.all(10),
          ),
          ListTile(
            title: const Text("Diary 5"),
            tileColor: Colors.grey.shade100,
            leading: const Icon(Iconsax.book), // Corrected icon reference
            contentPadding: const EdgeInsets.all(10),
          ),
          ListTile(
            title: const Text("Diary 5"),
            tileColor: Colors.grey.shade100,
            leading: const Icon(Iconsax.book), // Corrected icon reference
            contentPadding: const EdgeInsets.all(10),
          ),
          ListTile(
            title: const Text("Diary 5"),
            tileColor: Colors.grey.shade100,
            leading: const Icon(Iconsax.book), // Corrected icon reference
            contentPadding: const EdgeInsets.all(10),
          ),
          ListTile(
            title: const Text("Diary 5"),
            tileColor: Colors.grey.shade100,
            leading: const Icon(Iconsax.book), // Corrected icon reference
            contentPadding: const EdgeInsets.all(10),
          ),
          ListTile(
            title: const Text("Diary 5"),
            tileColor: Colors.grey.shade100,
            leading: const Icon(Iconsax.book), // Corrected icon reference
            contentPadding: const EdgeInsets.all(10),
          ),
        ],
      ),
    );
  }
}
