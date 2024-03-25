import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:travelapp/model/diary.dart';
import 'package:travelapp/screens/diary_details.dart';

class DiaryScreen extends StatefulWidget {
  const DiaryScreen({super.key});

  @override
  State<DiaryScreen> createState() => _DiaryScreenState();
}

class _DiaryScreenState extends State<DiaryScreen> {
  List<dynamic> diaries = [];

  Future getDiaries() async {
    var response = await http.get(Uri.http('localhost:5141', '/api/Diary'));
    var jsonData = jsonDecode(response.body);

    for (var eachDiary in jsonData) {
      final diary = Diary(
        id: eachDiary['id'],
        title: eachDiary['title'],
        description: eachDiary['description'],
      );
      diaries.add(diary);
    }
  }

  void navigateToDiaryDetails(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DiaryDetailsScreen(
          diary: diaries[index],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
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
      body: FutureBuilder(
        future: getDiaries(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              itemCount: diaries.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Container(
                    height: screenHeight * 0.15,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(255, 236, 236, 236)),
                    child: ListTile(
                      leading: Text(diaries[index].id.toString()),
                      title: Text(diaries[index].title),
                      subtitle: Text(diaries[index].description),
                      onTap: () => navigateToDiaryDetails(index),
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
