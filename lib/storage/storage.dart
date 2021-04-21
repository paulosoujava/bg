import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Storage {

  static final  storage = FlutterSecureStorage();


  static void save(String key, String value) async {
    await storage.write(key: key, value: value);
  }

  static  Future<Map<String, String>> loadAll(String key) async {
    return await storage.readAll();
  }
  static  Future<String> load(String key) async {
    return await storage.read(key: key);
  }


  static void delete(String key) async {
    await storage.delete(key: key);
  }

 }
