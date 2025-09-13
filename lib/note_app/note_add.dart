import 'package:bottombar/bottomBar/widget_all.dart';
import 'package:flutter/material.dart';

class NoteAdd extends StatefulWidget {
  const NoteAdd({super.key});

  @override
  State<NoteAdd> createState() => _NoteAddState();
}

class _NoteAddState extends State<NoteAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Column(
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
                        maxline: 2,
                        obsecuretext: false,
                        hittext: "Title",
                        txtfldBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                      CustomTxtfld(
                        maxlength: 120,
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

            ],
          ),
        ),
      ),
    );
  }
}
