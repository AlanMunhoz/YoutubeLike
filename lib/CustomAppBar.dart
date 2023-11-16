import 'package:flutter/material.dart';

import 'models/CustomSearchDelegate.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar()
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: const Key(""));

  @override
  final Size preferredSize;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Image.asset(
        "images/youtube.png",
        width: 120,
        height: 40,
      ),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.cast)),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_outlined)),
        IconButton(
            onPressed: () async {
              String? searchTerm = await showSearch(
                  context: context, delegate: CustomSearchDelegate());
              print("result searched: $searchTerm");
            },
            icon: const Icon(Icons.search))
      ],
    );
  }
}
