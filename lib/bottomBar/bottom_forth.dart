import 'package:flutter/material.dart';

class BottomForth extends StatefulWidget {
  const BottomForth({super.key});

  @override
  State<BottomForth> createState() => _BottomForthState();
}

class _BottomForthState extends State<BottomForth> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "This is a Fourth screen",
        style: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );;
  }
}
