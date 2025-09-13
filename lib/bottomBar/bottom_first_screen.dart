import 'package:bottombar/bottomBar/widget_all.dart';
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
              itemCount: 10,
              itemBuilder:
                  (context, index) => Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: NoteContainer(),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

