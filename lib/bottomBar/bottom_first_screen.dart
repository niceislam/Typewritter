import 'package:bottombar/bottomBar/widget_all.dart';
import 'package:bottombar/login_data/register_Data.dart';
import 'package:bottombar/note_app/note_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomFirstScreen extends StatefulWidget {
  const BottomFirstScreen({super.key});

  @override
  State<BottomFirstScreen> createState() => _BottomFirstScreenState();
}

class _BottomFirstScreenState extends State<BottomFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: NoteList.length,
              itemBuilder:
                  (context, index) => Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (c) => NoteDetails(
                                  backcolor: Notecolor[index],
                                  title: '${NoteList[index]['title']}',
                                  note: '${NoteList[index]['note']}',
                                ),
                          ),
                        );
                      },
                      child: NoteContainer(
                        Icondelete: InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder:
                                  (context) => AlertDialog(
                                    content: Text(
                                      "Are you sure to delete this item ?",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    title: Text("Confirmation"),
                                    actions: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Card(
                                          color: Colors.green,
                                          child: SizedBox(
                                            height: 35,
                                            width: 70,
                                            child: Center(
                                              child: Text(
                                                "No",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          NoteList.removeAt(index);
                                          Navigator.pop(context);
                                          setState(() {});
                                        },
                                        child: Card(
                                          color: Colors.red,
                                          child: SizedBox(
                                            height: 35,
                                            width: 70,
                                            child: Center(
                                              child: Text(
                                                "Yes",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17,
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
                          child: Icon(Icons.delete, size: 35),
                        ),
                        conColor: Notecolor[index % Notecolor.length],
                        title: '${NoteList[index]['title']}',
                        note: '${NoteList[index]['note']}',
                        time: '${NoteList[index]['created_at']}',
                      ),
                    ),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
