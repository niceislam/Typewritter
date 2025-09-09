import 'package:bottombar/bottomBar/Home_screen.dart';
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
      child: Column(
        children: [
          ExpansionTile(
            title: Text("Course"),
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (c) => HomeScreen()),
                  );
                },
                child: ListTile(title: Text("App Development"),leading: Icon(Icons.add),),
              ),
              ListTile(title: Text("App Development")),
              ListTile(title: Text("App Development")),
            ],
          ),
        ],
      ),
    );
  }
}
