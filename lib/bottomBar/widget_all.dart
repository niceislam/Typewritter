import 'dart:ffi';

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
    super.key, this.hittext, this.preIcon, this.validator, this.controller,
  });
  final String? hittext;
  final IconData? preIcon;
  final FormFieldValidator? validator;
  final TextEditingController? controller;


  @override
  Widget build(BuildContext context) {
    return Row(spacing: 8,
      children: [
        Icon(preIcon,color: Colors.blue,),
        Expanded(
          child: TextFormField(
            controller: controller,
            style: TextStyle(
              fontSize: 18,
            ),
            cursorHeight: 23,
            cursorColor: Colors.blue,
            decoration: InputDecoration(
              focusColor: Colors.blue,
              hintText: "${hittext}",
              contentPadding: EdgeInsets.symmetric(
                vertical: 10,
              ),
            ),
            validator: validator,
          ),
        ),
      ],
    );
  }
}
