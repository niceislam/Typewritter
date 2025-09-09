import 'package:bottombar/bottomBar/widget_all.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final mykey = GlobalKey<FormState>();
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
                          hinttext: "Your Email",
                          preIcon: Icon(Icons.mail_outline, size: 28),
                          validator: (value) {
                            if (value == null || value == "") {
                              return "Field can't be empty";
                            } else if (value.contains("@") ||
                                !value.contains(".")) {
                              return "Wrong email";
                            }
                          },
                        ),
                        SizedBox(height: 25),
                        LoginTextfield(

                          hinttext: "Password",
                          preIcon: Icon(Icons.lock_outline, size: 28),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            textAlign: TextAlign.end,
                            "Forgot password",
                            style: TextStyle(color: Colors.blue, fontSize: 16),
                          ),
                        ),
                        SizedBox(height: 50),
                        InkWell(
                          onTap: (){
                            if(mykey.currentState!.validate()){
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
