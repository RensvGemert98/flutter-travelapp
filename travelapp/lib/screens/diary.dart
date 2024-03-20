import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DiaryScreen extends StatelessWidget {
  const DiaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        toolbarHeight: 80,
        title: const Text(
          "Diaries",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 28,
            color: Color(0xff3D3D3D),
          ),
        ),
        foregroundColor: const Color(0xff3D3D3D),
        elevation: 0,
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
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
                  ListTile(
                    title: const Text("Diary 6"),
                    tileColor: Colors.grey.shade100,
                    leading: const Icon(Iconsax.book),
                    contentPadding: const EdgeInsets.all(10),
                  ),
                  ListTile(
                    title: const Text("Diary 7"),
                    tileColor: Colors.grey.shade100,
                    leading: const Icon(Iconsax.book),
                    contentPadding: const EdgeInsets.all(10),
                  ),
                  ListTile(
                    title: const Text("Diary 8"),
                    tileColor: Colors.grey.shade100,
                    leading: const Icon(Iconsax.book),
                    contentPadding: const EdgeInsets.all(10),
                  ),
                  ListTile(
                    title: const Text("Diary 9"),
                    tileColor: Colors.grey.shade100,
                    leading: const Icon(Iconsax.book),
                    contentPadding: const EdgeInsets.all(10),
                  ),
                  ListTile(
                    title: const Text("Diary 10"),
                    tileColor: Colors.grey.shade100,
                    leading: const Icon(Iconsax.book),
                    contentPadding: const EdgeInsets.all(10),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
