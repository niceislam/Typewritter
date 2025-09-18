import 'package:bottombar/Local_database/local_storage.dart';
import 'package:bottombar/login_data/Home_screen.dart';
import 'package:bottombar/login_data/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Gologin() async {
    await Future.delayed(Duration(seconds: 3));
    var res = await LocalStorage().readData(key: "Login");
    if (res == null) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (c) => LoginScreen()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (c) => HomeScreen()),
      );
    }
  }

  void initState() {
    Gologin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLrtxUxAoGkEBsd_2I-LqXC7LzmP2YIxl0Lw&s",
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
