import 'package:flutter/material.dart';

class NoteDetails extends StatelessWidget {
  const NoteDetails({super.key, required this.note, required this.title, this.backcolor});

  final String note;
  final String title;
  final Color? backcolor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      appBar: AppBar(backgroundColor: backcolor),
      body: Center(
        child: Container(
          height: 300,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: Column(
            spacing: 15,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "$title",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              Text(
                "$note",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
