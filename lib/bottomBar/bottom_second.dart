import 'dart:developer';

import 'package:bottombar/bottomBar/Home_screen.dart';
import 'package:bottombar/bottomBar/widget_all.dart';
import 'package:flutter/material.dart';

class BottomSecond extends StatefulWidget {
  const BottomSecond({super.key});

  @override
  State<BottomSecond> createState() => _BottomSecondState();
}

class _BottomSecondState extends State<BottomSecond> {
  int selectedvalue = 1;
  String? selectedItem;
  String? selectedage;
  List<String> gender = ["Male", "Female", "Others"];
  List<String> age = ["-10", "18+", "45+"];
  List droppage = [HomeScreen()];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 5,
          children: [
            RadioButtonCard(
              question: 'What is our country name ?',
              op1: 'India',
              op2: 'Pakistan',
              op3: 'Singapore',
              op4: 'Canada',
            ),
            Text(
              "Are you ?",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: SizedBox(
                  child: DropdownButton(
                    hint: Text(
                      "Chose",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    value: selectedItem,
                    items:
                        gender
                            .map(
                              (v) => DropdownMenuItem(child: Text(v), value: v),
                            )
                            .toList(),
                    onChanged: (value) {
                      selectedItem = value;
                      setState(() {});
                    },
                  ),
                ),
              ),
            ),
            Text(
              "Your age level ?",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
            ),
            Card(
              child: SizedBox(
                height: 50,
                width: 80,
                child: Center(
                  child: DropdownButton(
                    dropdownColor: Colors.greenAccent,
                    hint: Text("Age"),
                    value: selectedage,
                    items:
                        age
                            .map(
                              (val) => DropdownMenuItem(
                                child: Text(val),
                                value: val,
                              ),
                            )
                            .toList(),
                    onChanged: (value){
                      selectedage = value;
                      setState(() {
                        
                      });
                    },
                  ),
                ),
              ),
            ),

            RadioButtonCard(
              question: 'What is your age level ?',
              op1: '20-25',
              op2: '26-35',
              op3: '36-45',
              op4: '45+',
            ),
            RadioButtonCard(
              question: 'What is our country name ?',
              op1: 'India',
              op2: 'Pakistan',
              op3: 'Singapore',
              op4: 'Canada',
            ),
            SizedBox(height: 15),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.indigo),
                foregroundColor: WidgetStatePropertyAll(Colors.white),
              ),
              onPressed: () {},
              child: Text(
                "Submit",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
