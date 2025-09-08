import 'package:flutter/material.dart';
import 'package:typewritertext/typewritertext.dart';

class BottomFirstScreen extends StatefulWidget {
  const BottomFirstScreen({super.key});

  @override
  State<BottomFirstScreen> createState() => _BottomFirstScreenState();
}

class _BottomFirstScreenState extends State<BottomFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 110,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            color: Colors.indigo,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: TypeWriter.text(
              "My name is Nice.\nI am a Flutter Developer",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              duration: Duration(milliseconds: 100),
            ),
          ),
        ),
        SizedBox(height: 200),
        Center(
          child: Text(
            "This is a first screen",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
