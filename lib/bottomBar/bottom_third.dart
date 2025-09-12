import 'package:bottombar/login_data/Home_screen.dart';
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
      child: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder:
                (context) => AlertDialog(
                  title: Text("Confirmation"),
                  content: Text(
                    "Are you sure to remove this item ?",
                    style: TextStyle(fontSize: 18),
                  ),
                  actions: [
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (c) => HomeScreen()),
                        );
                      },
                      child: Card(
                        color: Colors.red,
                        child: SizedBox(
                          height: 40,
                          width: 80,
                          child: Center(
                            child: Text(
                              "Yes",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Card(
                        color: Colors.green,
                        child: SizedBox(
                          height: 40,
                          width: 80,
                          child: Center(
                            child: Text(
                              "No",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
          );
        },
        child: Icon(Icons.delete, size: 35, color: Colors.red),
      ),
    );
  }
}
