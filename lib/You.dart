import 'package:flutter/material.dart';

class You extends StatefulWidget {
  const You({super.key});

  @override
  State<You> createState() => _YouState();
}

class _YouState extends State<You> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "You",
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}
