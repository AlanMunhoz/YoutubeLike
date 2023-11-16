import 'package:flutter/material.dart';

import 'models/CustomSearchDelegate.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset(
          "images/youtube.png",
          width: 120,
          height: 40,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.cast)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none_outlined)),
          IconButton(
              onPressed: () async {
                String? searchTerm = await showSearch(
                    context: context,
                    delegate: CustomSearchDelegate()
                );
                print("result searched: $searchTerm");
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: Container(
        child: null,
      ),
    );
  }
}
