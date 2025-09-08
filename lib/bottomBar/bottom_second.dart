import 'dart:developer';

import 'package:bottombar/bottomBar/widget_all.dart';
import 'package:flutter/material.dart';

class BottomSecond extends StatefulWidget {
  const BottomSecond({super.key});

  @override
  State<BottomSecond> createState() => _BottomSecondState();
}

class _BottomSecondState extends State<BottomSecond> {
  String? dropdownValue;

  final List<String> items = <String>[
    'Apple',
    'Banana',
    'Orange',
    'Grape'
  ];
  int selectedvalue = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
      child: SingleChildScrollView(
        child: Column(
          spacing: 5,
          children: [
            RadioButtonCard(
              question: 'What is our country name ?',
              op1: 'India',
              op2: 'Pakistan',
              op3: 'Singapore',
              op4: 'Canada',
            ),
        DropdownButton<String>(
          hint: Text("choose"),
          value: dropdownValue,
          items: items.map((v) {
            return DropdownMenuItem(
              value: v,
              child: Text(v),
            );
          }).toList(),
          onChanged: (v) {
            setState(() {
              dropdownValue = v;
            });
          },
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
