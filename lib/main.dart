import 'package:flutter/material.dart';
import 'login_data/login_screen.dart';
import 'login_data/register_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
    );
  }
}
