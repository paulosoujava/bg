import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'core/core.dart';
import 'ui/ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
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

