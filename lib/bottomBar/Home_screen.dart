import 'dart:developer';
import 'package:typewritertext/typewritertext.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text(
          "Bottombar",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: TypeWriter.text(
          // alignment: Alignment.center,
          "I am a flutter developer\n in coderangon ,my father\n name is Mokbul hossain",
          duration: Duration(milliseconds: 100),
        ),
      ),
    );
  }
}
