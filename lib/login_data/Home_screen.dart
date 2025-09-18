import 'dart:developer';

import 'package:bottombar/Local_database/local_storage.dart';
import 'package:bottombar/bottomBar/bottom_first_screen.dart';
import 'package:bottombar/bottomBar/bottom_forth.dart';
import 'package:bottombar/bottomBar/bottom_second.dart';
import 'package:bottombar/bottomBar/bottom_third.dart';
import 'package:bottombar/login_data/login_screen.dart';
import 'package:bottombar/bottomBar/widget_all.dart';
import 'package:bottombar/note_app/note_add.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      appBar:
          index == 0
              ? AppBar(
                iconTheme: IconThemeData(color: Colors.white),
                backgroundColor: Colors.indigo,
                centerTitle: true,
                title: Text(
                  "Your Note",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(70),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 1, left: 15, right: 15),
                    child: Column(
                      children: [
                        CustomTxtfld(
                          cursorcolor: Colors.indigo,
                          hittext: "Search here",
                          preIcons: Icon(Icons.search, color: Colors.indigo),
                          filled: true,
                          filcolor: Colors.white,
                          obsecuretext: false,
                          txtfldBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              )
              : index == 1
              ? AppBar(
                iconTheme: IconThemeData(color: Colors.white),
                backgroundColor: Colors.indigo,
                centerTitle: true,
                title: Text(
                  "2nd screen",
                  style: TextStyle(color: Colors.white),
                ),
              )
              : index == 2
              ? AppBar(
                iconTheme: IconThemeData(color: Colors.white),
                backgroundColor: Colors.indigo,
                centerTitle: true,
                title: Text(
                  "3rd screen",
                  style: TextStyle(color: Colors.white),
                ),
              )
              : index == 3
              ? AppBar(
                iconTheme: IconThemeData(color: Colors.white),
                backgroundColor: Colors.indigo,
                centerTitle: true,
                title: Text(
                  "4th screen",
                  style: TextStyle(color: Colors.white),
                ),
              )
              : null,
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
                spacing: 5,
                children: [
                  ListTile(
                    title: Text(
                      "My file",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    leading: Icon(Icons.file_open),
                  ),
                  ListTile(
                    title: Text(
                      "Shared with me",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    leading: Icon(Icons.person),
                  ),
                  ListTile(
                    title: Text(
                      "Stared",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    leading: Icon(Icons.star),
                  ),
                  ExpansionTile(
                    title: Text("Others"),
                    children: [
                      ListTile(
                        title: Text(
                          "Recent",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        leading: Icon(Icons.recent_actors),
                      ),
                      ListTile(
                        title: Text(
                          "Offline",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        leading: Icon(Icons.offline_bolt),
                      ),
                      ListTile(
                        title: Text(
                          "Trash",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        leading: Icon(Icons.delete),
                      ),
                    ],
                  ),

                  ShowDialogue(
                    ontapyes: () async {
                      await LocalStorage().deleteData(key: "Login");
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (c) => LoginScreen()),
                      );
                    },
                    ontapno: () {
                      Navigator.pop(context);
                    },
                    child: ListTile(
                      title: Text(
                        "Log out",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      leading: Icon(Icons.logout),
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
        onPressed: () async {
          var result = await LocalStorage().readData(key: "adListData");
          log("==============$result");
          Navigator.push(context, MaterialPageRoute(builder: (c) => NoteAdd()));
        },
        child: Icon(CupertinoIcons.add, size: 30, color: Colors.black),
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
