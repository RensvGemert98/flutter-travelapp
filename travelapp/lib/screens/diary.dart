import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DiaryScreen extends StatefulWidget {
  const DiaryScreen({super.key});

  @override
  State<DiaryScreen> createState() => _DiaryScreenState();
}

class _DiaryScreenState extends State<DiaryScreen> {
  List<dynamic> diaries = [];

  @override
  Widget build(BuildContext context) {
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
      floatingActionButton: FloatingActionButton(
        onPressed: fetchDiaries,
      ),
      body: ListView.builder(
          itemCount: diaries.length,
          itemBuilder: (context, index) {
            final diary = diaries[index];
            final title = diary['title'];
            return ListTile(
              title: Text(title),
            );
          }),
    );
  }

  void fetchDiaries() async {
    const url = 'http://localhost:5141/api/Diary';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    setState(() {
      diaries = json;
    });
  }
}
