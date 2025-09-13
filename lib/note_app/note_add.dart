import 'dart:developer';

import 'package:bottombar/bottomBar/bottom_first_screen.dart';
import 'package:bottombar/bottomBar/widget_all.dart';
import 'package:flutter/material.dart';

import '../login_data/register_Data.dart';

class NoteAdd extends StatefulWidget {
  const NoteAdd({super.key});

  @override
  State<NoteAdd> createState() => _NoteAddState();
}

class _NoteAddState extends State<NoteAdd> {
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController notecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Column(
            spacing: 20,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.greenAccent,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 5,
                  ),
                  child: Column(
                    children: [
                      CustomTxtfld(
                        controller: titlecontroller,
                        maxline: 2,
                        obsecuretext: false,
                        hittext: "Title",
                        txtfldBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                      CustomTxtfld(
                        controller: notecontroller,
                        maxline: 8,
                        hittext: "Write here",
                        obsecuretext: false,
                        txtfldBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.sizeOf(context).width / 2,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.indigo),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    NoteList.add({
                      "title": "${titlecontroller.text}",
                      "note": "${notecontroller.text}",
                      "created_at": "${DateTime.now()}",
                    });
                    setState(() {});
                  },
                  child: Text(
                    "ADD",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
