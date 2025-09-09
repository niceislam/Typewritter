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
    BottomForth(),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
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
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 200,
              width: MediaQuery.sizeOf(context).width,
              color: Colors.blue,
              child: Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                    "https://docs.flutter.dev/assets/images/flutter-logo-sharing.png",
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                spacing: 2,
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        child: Text("Emoji", style: TextStyle(fontSize: 20)),
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        child: Text("Emoji", style: TextStyle(fontSize: 20)),
                      ),
                    ),
                  ),
                  ExpansionTile(
                    title: Text("Courses", style: TextStyle(fontSize: 20)),
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: MediaQuery.sizeOf(context).width,
                            child: Text(
                              "Comment",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: MediaQuery.sizeOf(context).width,
                            child: Text(
                              "Comment",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: MediaQuery.sizeOf(context).width,
                            child: Text(
                              "Comment",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        child: Text("Comment", style: TextStyle(fontSize: 20)),
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        child: Text("Emoji", style: TextStyle(fontSize: 20)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      body: bodyScreen[index],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {},
        child: Icon(CupertinoIcons.moon_fill, size: 30, color: Colors.black),
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
