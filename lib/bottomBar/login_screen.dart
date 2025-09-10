import 'dart:developer';

import 'package:bottombar/bottomBar/Home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final mykey = GlobalKey<FormState>();
  bool tapeye = true;
  TextEditingController mailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.sizeOf(context).height,
          maxWidth: MediaQuery.sizeOf(context).width,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.centerRight,
            colors: [Colors.blue.shade800, Colors.blue.shade500],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 55,
                      ),
                    ),
                    Text(
                      "Enter a beautiful world",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 120, left: 35, right: 35),
                  child: Form(
                    key: mykey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        _buildTextFormField(
                          controller: mailcontroller,
                          hinttext: 'Your Email',
                          preIcon: Icon(Icons.mail_outlined, size: 28),
                          obsecuretext: false,
                          validator: (value) {
                            if (value == null || value == "") {
                              return "field can't be empty";
                            } else if (!value.contains("@") ||
                                !value.contains(".")) {
                              return "Invalid email";
                            } else {
                              return "";
                            }
                          },
                        ),
                        SizedBox(height: 15),
                        _buildTextFormField(
                          controller: passcontroller,
                          sufixIcon: InkWell(
                            onTap: () {
                              tapeye = !tapeye;
                              setState(() {});
                            },
                            child:
                                !tapeye == true
                                    ? Icon(Icons.visibility)
                                    : Icon(Icons.visibility_off),
                          ),
                          hinttext: 'Password',
                          preIcon: Icon(
                            Icons.lock_outline,
                            size: 28,
                            color: Colors.black,
                          ),
                          obsecuretext: tapeye,
                          validator: (value) {
                            if (value == null || value == "") {
                              return "field can't be empty";
                            } else if (value.length < 8) {
                              return "Password is short";
                            } else if (!(RegExp('[A-Z]').hasMatch(value) &&
                                RegExp('[a-z]').hasMatch(value) &&
                                RegExp('[0-9]').hasMatch(value))) {
                              return "Password not secure";
                            }
                          },
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forget password",
                            style: TextStyle(color: Colors.blue, fontSize: 17),
                          ),
                        ),
                        SizedBox(height: 40),
                        InkWell(
                          onTap: () {
                            if (mykey.currentState!.validate()) {
                              return;
                            }
                            if (mailcontroller.text ==
                                    "mdniceislam@gmail.com" &&
                                passcontroller.text == "Nice64512") {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (c) => HomeScreen()),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  showCloseIcon: true,
                                  backgroundColor: Colors.red,
                                  content: Text(
                                    "Login Failed",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    ),
                                  ),
                                ),
                              );
                              log("==========login failed");
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
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 40),
                        Row(
                          children: [
                            Text(
                              "Don't Have An Account?",
                              style: TextStyle(fontSize: 17),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Register now",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ],
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

  TextFormField _buildTextFormField({
    required String hinttext,
    required Icon preIcon,
    FormFieldValidator? validator,
    required bool obsecuretext,
    InkWell? sufixIcon,
    TextEditingController? controller,
  }) {
    return TextFormField(
      controller: controller,
      obscureText: obsecuretext,
      validator: validator,
      decoration: InputDecoration(
        suffixIcon: sufixIcon,
        hintText: "${hinttext}",
        prefixIcon: preIcon,
        fillColor: Colors.black.withOpacity(0.11),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
