import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../../ui/ui.dart';
import '../../../../core/core.dart';
import '../.././../../model/gb.dart';

class NewsController with NavigatorManager {
  final showLoad = ValueNotifier<bool>(true);
  var dio = Dio();
  GB gb;

  void fetch() async {
    try {
      Response response = await dio
          .get('https://gb-mobile-app-teste.s3.amazonaws.com/data.json');
      gb = GB.fromJson(response.data);
      showLoad.value = false;
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
    }
  }

  void goBack(BuildContext context) {
    redirect(context, Pages.HOME, replace: true);
  }
}
