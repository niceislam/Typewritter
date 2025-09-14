import 'package:flutter/material.dart';

import '../bottomBar/widget_all.dart';

class NoteDetails extends StatefulWidget {
  const NoteDetails({
    super.key,
    required this.backcolor,
    required this.title,
    required this.note,
  });
  final Color backcolor;
  final String title;
  final String note;

  @override
  State<NoteDetails> createState() => _NoteDetailsState();
}

class _NoteDetailsState extends State<NoteDetails> {
  TextEditingController notecontroller = TextEditingController();
  TextEditingController titlecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    notecontroller.text = widget.note;
    titlecontroller.text = widget.title;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          InkWell(
              onTap: (){},
              child: Icon(Icons.check, size: 30)),
          SizedBox(width: 10),
        ],
      ),
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
                  color: widget.backcolor,
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
            ],
          ),
        ),
      ),
    );
  }
}
