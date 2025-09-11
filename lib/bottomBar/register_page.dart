import 'dart:developer';

import 'package:bottombar/bottomBar/login_screen.dart';
import 'package:bottombar/bottomBar/register_Data.dart';
import 'package:bottombar/bottomBar/widget_all.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool tap2eye = false;
  bool tap3eye = false;
  TextEditingController mailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController conpasscontroller = TextEditingController();
  final fieldkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.sizeOf(context).height,
                maxWidth: MediaQuery.sizeOf(context).width,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.blue.shade800, Colors.blue.shade400],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Form(
                  key: fieldkey,
                  child: Column(
                    spacing: 25,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: MediaQuery.sizeOf(context).height / 1.8,
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 20,
                          ),
                          child: Column(
                            spacing: 10,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              RegisterTextfield(
                                controller: mailcontroller,
                                preIcon: Icons.mail,
                                hittext: "Email",
                                validator: (value) {
                                  if (value == null || value == "") {
                                    return "field can't be empty";
                                  } else if (!value.contains('@') ||
                                      !value.contains('.')) {
                                    return "Invalid email address";
                                  } else {
                                    return null;
                                  }
                                }, obsecuretext: false,
                              ),
                              SizedBox(height: 10),
                              RegisterTextfield(
                                obsecuretext: !tap3eye,
                                sufIcon: InkWell(
                                  onTap: () {
                                    tap3eye = !tap3eye;
                                    setState(() {

                                    });
                                  },
                                  child:
                                  tap3eye == true
                                      ? Icon(Icons.visibility, size: 26)
                                      : Icon(Icons.visibility_off, size: 26),
                                ),
                                controller: passwordcontroller,
                                preIcon: Icons.lock,
                                hittext: "Password",
                                validator: (value) {
                                  if (value == null || value == "") {
                                    return "Enter a password";
                                  } else if (value.length <= 8) {
                                    return "Enter a long password";
                                  } else if (!(RegExp(
                                        '[A-Z]',
                                      ).hasMatch(value) &&
                                      RegExp('[a-z]').hasMatch(value) &&
                                      RegExp('[0-9]').hasMatch(value))) {
                                    return "Enter a strong password";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              SizedBox(height: 10),
                              RegisterTextfield(
                                obsecuretext: !tap2eye,
                                sufIcon: InkWell(
                                  onTap: () {
                                    tap2eye = !tap2eye;
                                    setState(() {

                                    });
                                  },
                                  child:
                                      tap2eye == true
                                          ? Icon(Icons.visibility, size: 26)
                                          : Icon(Icons.visibility_off, size: 26),
                                ),
                                controller: conpasscontroller,
                                preIcon: Icons.password,
                                hittext: "Confirm Password",
                                validator: (value) {
                                  if (value == null || value == "") {
                                    return "field can't empty";
                                  } else if (!(value ==
                                      passwordcontroller.text)) {
                                    return "Enter a valid password";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              SizedBox(height: 20),
                              InkWell(
                                onTap: () {
                                  if (!fieldkey.currentState!.validate()) {
                                    return;
                                  }
                                  registrationInfo.add({
                                    "email": "${mailcontroller.text}",
                                    "password": "${passwordcontroller.text}",
                                  });
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      duration: Duration(seconds: 3),
                                      backgroundColor: Colors.pinkAccent,
                                      showCloseIcon: true,
                                      content: Text(
                                        "Registration successful",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      closeIconColor: Colors.white,
                                    ),
                                  );
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (c) => LoginScreen(),
                                    ),
                                  );
                                  setState(() {});
                                },
                                child: Container(
                                  height: 50,
                                  width: MediaQuery.sizeOf(context).width / 2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.blue,
                                    border: Border(
                                      bottom: BorderSide(
                                        width: 3,
                                        color: Colors.red,
                                      ),
                                      top: BorderSide(
                                        width: 3,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Register",
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (c) => LoginScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Login instead",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 18,
                                  ),
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
            ),
          ],
        ),
      ),
    );
  }
}
