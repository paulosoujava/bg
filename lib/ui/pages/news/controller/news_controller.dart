import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:gb_app/model/GB.dart';

class HomeController {
  final showLoad = ValueNotifier<bool>(true);
  var dio = Dio();
  GB gb;

  void gets() async {
    final response =
        await dio.get('https://gb-mobile-app-teste.s3.amazonaws.com/data.json');
    print(response.data);
  }

  Future<GB> get() async {
    try {
      Response response = await dio
          .get('https://gb-mobile-app-teste.s3.amazonaws.com/data.json');
       gb = GB.fromJson(response.data);
      showLoad.value = false;
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
    }
  }
}
