import 'package:flutter/material.dart';
import 'package:youtube_like/CustomAppBar.dart';

import 'Create.dart';
import 'Home.dart';
import 'Shorts.dart';
import 'Subscriptions.dart';
import 'You.dart';

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
  var _screenIndex = 0;
  List<Widget> bodyScreen = [
    const Home(),
    const Shorts(),
    const Create(),
    const Subscriptions(),
    const You()
  ];
  var navigationItems = const [
    BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
    BottomNavigationBarItem(label: "Shorts", icon: Icon(Icons.ondemand_video)),
    BottomNavigationBarItem(label: "Create", icon: Icon(Icons.add_circle_outline_outlined)),
    BottomNavigationBarItem(label: "Subscriptions", icon: Icon(Icons.subscriptions_outlined)),
    BottomNavigationBarItem(label: "You", icon: Icon(Icons.account_circle))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: bodyScreen[_screenIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() { _screenIndex = index; });
        },
        currentIndex: _screenIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.white,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white60,
        items: navigationItems,
      ),
    );
  }
}
