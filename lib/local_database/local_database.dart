import 'dart:developer';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalDatabase {
  final storage = FlutterSecureStorage();
  dataWriteFun({required String key, required String value}) async {
    await storage.write(key: key, value: value);
  }

  datareadFun({required String key}) async {
    String? value = await storage.read(key: key);
    log("==============$value");
  }

  dataDeleteFun({required String key}) async {
    await storage.delete(key: key);
  }

  dataAllDeleteFun() async {
    await storage.deleteAll();
  }
}
