import 'package:flutter/material.dart';
import 'package:youtube_like/CustomAppBar.dart';

import 'Home.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: YoutubeLikeApp(),
  ));
}

class YoutubeLikeApp extends StatefulWidget {
  const YoutubeLikeApp({super.key});

  @override
  State<YoutubeLikeApp> createState() => _YoutubeLikeAppState();
}

class _YoutubeLikeAppState extends State<YoutubeLikeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Container(
        child: Home(),
      ),
    );
  }
}
