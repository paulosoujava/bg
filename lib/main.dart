import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:gb_app/ui/themes/app_theme.dart';

import 'core/core.dart';
import 'ui/root/root.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: makeAppTheme().primaryColorDark
    ));
    return MaterialApp(
      title: 'GB',
      debugShowCheckedModeBanner: false,
      theme: makeAppTheme(),
      home:Root(Pages.SPLASH),
    );
  }
}

