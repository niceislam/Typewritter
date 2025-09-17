import 'dart:developer';

import 'package:bottombar/local_database/local_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalTestScreen extends StatefulWidget {
  const LocalTestScreen({super.key});

  @override
  State<LocalTestScreen> createState() => _LocalTestScreenState();
}

class _LocalTestScreenState extends State<LocalTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.greenAccent),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () async {
                await LocalDatabase().dataWriteFun(key: "name", value: "Nice islam");
                log("===============111");
              },
              child: Text("DataAdd"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                var a = await LocalDatabase().datareadFun(key: "name");
              },
              child: Text("DataRead"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await LocalDatabase().dataAllDeleteFun();
                log("==================deleteData");
              },
              child: Text("DataDelete"),
            ),
          ],
        ),
      ),
    );
  }
}
