import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.diary.title),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: const Color(0xff3D3D3D),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset('assets/places/macmacfalls.jpg', //widget.diary.imagepath
                        fit: BoxFit.cover, height: screenHeight * 0.25),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
