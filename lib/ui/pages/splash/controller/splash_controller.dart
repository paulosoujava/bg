import 'package:gb_app/storage/storage.dart';

import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../../ui/ui.dart';

class SplashController with NavigatorManager {
  final redirectTo = ValueNotifier<bool>(true);
  Pages page;

  load() async {
    final token = await Storage.load(KEY_LOGGED);
    print(token);
    await _sleep();

    if (token == null) {
      page = Pages.LOGIN;
      redirectTo.value = false;
      return;
    }

    page = Pages.HOME;
    redirectTo.value = false;
  }

  Future<void> _sleep() async {
    await new Future.delayed(const Duration(seconds : 1));
  }
}
