import 'package:flutter/material.dart';
class BottomThird extends StatefulWidget {
  const BottomThird({super.key});

  @override
  State<BottomThird> createState() => _BottomThirdState();
}

class _BottomThirdState extends State<BottomThird> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "This is a Third screen",
        style: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
