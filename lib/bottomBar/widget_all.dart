import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

int selectedvalue = 1;

class RadioButtonCard extends StatelessWidget {
  const RadioButtonCard({
    super.key,
    required this.question,
    required this.op1,
    required this.op2,
    required this.op3,
    required this.op4,
  });
  final String question;
  final String op1;
  final String op2;
  final String op3;
  final String op4;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            top: 5,
            bottom: 5,
            right: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${question}",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
              ),
              RadioListTile(
                title: Text("${op1}"),
                value: 1,
                groupValue: selectedvalue,
                onChanged: (value) {
                  selectedvalue = value!;
                },
              ),
              RadioListTile(
                title: Text("${op2}"),
                value: 2,
                groupValue: selectedvalue,
                onChanged: (value) {
                  selectedvalue = value!;
                },
              ),
              RadioListTile(
                title: Text("${op3}"),
                value: 3,
                groupValue: selectedvalue,
                onChanged: (value) {
                  selectedvalue = value!;
                },
              ),
              RadioListTile(
                title: Text("${op4}"),
                value: 4,
                groupValue: selectedvalue,
                onChanged: (value) {
                  selectedvalue = value!;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterTextfield extends StatelessWidget {
  const RegisterTextfield({
    super.key,
    this.hittext,
    this.preIcon,
    this.validator,
    this.controller,
    this.sufIcon,
    required this.obsecuretext,
    this.txtfldBorder,
    this.filcolor,
    this.filled,
  });
  final String? hittext;
  final IconData? preIcon;
  final FormFieldValidator? validator;
  final TextEditingController? controller;
  final InkWell? sufIcon;
  final bool obsecuretext;
  final InputBorder? txtfldBorder;
  final Color? filcolor;
  final bool? filled;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 11,
      children: [
        Icon(preIcon, color: Colors.blue),
        Expanded(
          child: TextFormField(
            obscureText: obsecuretext,
            controller: controller,
            style: TextStyle(fontSize: 18),
            cursorHeight: 23,
            cursorColor: Colors.blue,
            decoration: InputDecoration(
              filled: filled,
              fillColor: filcolor,
              border: txtfldBorder,
              suffixIcon: sufIcon,
              focusColor: Colors.blue,
              hintText: "${hittext}",
              contentPadding: EdgeInsets.symmetric(vertical: 10),
            ),
            validator: validator,
          ),
        ),
      ],
    );
  }
}

class ShowDialogue extends StatelessWidget {
  const ShowDialogue({
    super.key,
    this.content,
    this.ontapyes,
    this.ontapno,
    this.child,
  });
  final String? content;
  final VoidCallback? ontapyes;
  final VoidCallback? ontapno;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder:
              (context) => AlertDialog(
                content: Text(
                  "Are you log out from app ?",
                  style: TextStyle(fontSize: 19),
                ),
                title: Text("Confirmation"),
                actions: [
                  InkWell(
                    onTap: ontapyes,
                    child: Card(
                      color: Colors.red,
                      child: SizedBox(
                        height: 35,
                        width: 70,
                        child: Center(
                          child: Text(
                            "Yes",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: ontapno,
                    child: Card(
                      color: Colors.green,
                      child: SizedBox(
                        height: 35,
                        width: 70,
                        child: Center(
                          child: Text(
                            "No",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
        );
      },
      child: child,
    );
  }
}

class CustomTxtfld extends StatelessWidget {
  const CustomTxtfld({
    super.key,
    required this.obsecuretext,
    this.controller,
    this.filled,
    this.filcolor,
    this.txtfldBorder,
    this.sufIcon,
    this.hittext,
    this.validator, this.preIcons, this.cursorcolor, this.maxline, this.maxlength,
  });

  final bool obsecuretext;
  final TextEditingController? controller;
  final bool? filled;
  final Color? filcolor;
  final InputBorder? txtfldBorder;
  final InkWell? sufIcon;
  final String? hittext;
  final FormFieldValidator? validator;
  final Icon? preIcons;
  final Color? cursorcolor;
  final int? maxline;
  final int? maxlength;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxline,
      maxLength: maxlength,
      obscureText: obsecuretext,
      controller: controller,
      style: TextStyle(fontSize: 18),
      cursorHeight: 23,
      cursorColor: cursorcolor,
      decoration: InputDecoration(
        prefixIcon: preIcons,
        filled: filled,
        fillColor: filcolor,
        border: txtfldBorder,
        suffixIcon: sufIcon,
        focusColor: Colors.blue,
        hintText: "${hittext}",
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      ),
      validator: validator,
    );
  }
}

class NoteContainer extends StatelessWidget {
  const NoteContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.greenAccent,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Title",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              maxLines: 2,
              "ami nice amar akta vatija ace khub sunasdfasdfasdfasdfasdfdor, khub khela kore ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(CupertinoIcons.clock, size: 22),
                    Text(
                      "${DateTime.now().toString().substring(10, 16)}",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ],
                ),
                Card(
                  color: Colors.white,
                  child: Row(
                    spacing: 15,
                    children: [
                      Icon(Icons.edit, size: 40),
                      Icon(Icons.delete, size: 40),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
