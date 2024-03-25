import 'package:flutter/material.dart';
import 'package:travelapp/model/diary.dart';

class DiaryDetailsScreen extends StatefulWidget {
  final Diary diary;
  const DiaryDetailsScreen({super.key, required this.diary});

  @override
  State<DiaryDetailsScreen> createState() => _DiaryDetailsScreenState();
}

class _DiaryDetailsScreenState extends State<DiaryDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.diary.title),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: const Color(0xff3D3D3D),
      ),
    );
  }
}
