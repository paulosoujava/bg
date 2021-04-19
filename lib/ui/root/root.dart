import 'package:flutter/material.dart';

import '../../core/core.dart';

import '../../ui/pages/pages.dart';

class Root extends StatelessWidget {
  final Pages page;

  Root(this.page);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _makeFactoryPage(page)),
    );
  }

   _makeFactoryPage(page) {
    switch (page) {
      case Pages.LOGIN:
        return Login();
        break;
      case Pages.REGISTER:
        return Register();
        break;
      case Pages.SPLASH:
        return Splash();
      case Pages.HOME:
        return Home();
        break;
    }
  }
}
