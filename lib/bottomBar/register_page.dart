import 'package:bottombar/bottomBar/login_screen.dart';
import 'package:bottombar/bottomBar/widget_all.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                        height: MediaQuery.sizeOf(context).height / 2,
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
                                preIcon: Icons.mail,
                                hittext: "Email",
                              ),
                              RegisterTextfield(
                                preIcon: Icons.mail,
                                hittext: "Email",
                              ),
                              RegisterTextfield(
                                preIcon: Icons.mail,
                                hittext: "Email",
                              ),
                              SizedBox(height: 20),
                              InkWell(
                                onTap: () {
                                  if (fieldkey.currentState!.validate()) {
                                    return;
                                  }
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
