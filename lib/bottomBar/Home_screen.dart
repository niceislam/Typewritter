import 'package:bottombar/bottomBar/bottom_first_screen.dart';
import 'package:bottombar/bottomBar/bottom_forth.dart';
import 'package:bottombar/bottomBar/bottom_second.dart';
import 'package:bottombar/bottomBar/bottom_third.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:typewritertext/typewritertext.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List bodyScreen = [
    BottomFirstScreen(),
    BottomSecond(),
    BottomThird(),
    BottomForth()
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text(
          "BottomNavBar",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: bodyScreen[index],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {},
        child: Icon(CupertinoIcons.moon_fill, size: 30,color: Colors.black,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: Colors.indigo,
        icons: [Icons.home, Icons.school, Icons.bookmark, Icons.person],
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        activeIndex: index,
        activeColor: Colors.white,
        height: 65,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
      ),
    );
  }
}
