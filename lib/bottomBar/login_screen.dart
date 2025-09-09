import 'dart:developer';

import 'package:bottombar/bottomBar/Home_screen.dart';
import 'package:bottombar/bottomBar/widget_all.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  final mykey = GlobalKey<FormState>();
  bool tapIcon = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: MediaQuery.sizeOf(context).width,
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.only(top: 105, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Enter a beautiful world",
                      style: TextStyle(color: Colors.white, fontSize: 28),
                    ),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, -60),
              child: Container(
                height: 556,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 120, left: 25, right: 25),
                  child: Form(
                    key: mykey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        LoginTextfield(
                          controller: emailcontroller,
                          hinttext: "Your Email",
                          preIcon: Icon(Icons.mail_outline, size: 28),
                          validator: (value) {
                            if (value == null || value == "") {
                              return "Field can't be empty";
                            } else if (!value.contains("@") ||
                                !value.contains(".")) {
                              return "Wrong email";
                            } else if (value == "nice@gmail.com") {
                              return "";
                            } else {
                              return "wrong user";
                            }
                          },
                          obsecuretext: false,
                        ),
                        SizedBox(height: 25),
                        LoginTextfield(
                          controller: passcontroller,
                          hinttext: "Password",
                          preIcon: Icon(Icons.lock_outline, size: 28),
                          validator: (value) {
                            if (value == null || value == "") {
                              return "Field can't be empty";
                            } else if (value == "12345678") {
                              return "";
                            } else if (value.length > 8){
                              return "please short password";
                            }else{return "wrong user";}
                          },
                          obsecuretext: !tapIcon,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  activeColor: Colors.blue,
                                  value: tapIcon,
                                  onChanged: (value) {
                                    tapIcon = !tapIcon;
                                    setState(() {});
                                  },
                                ),
                                Text("Show password"),
                              ],
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                textAlign: TextAlign.end,
                                "Forgot password",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 50),
                        InkWell(
                          onTap: () {
                            log(
                              "==============${emailcontroller.text}==============${passcontroller.text}",
                            );
                            if (mykey.currentState!.validate()) {
                              return;
                            }
                          },
                          child: Container(
                            height: 50,
                            width: MediaQuery.sizeOf(context).width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.blue,
                            ),
                            child: Center(
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
