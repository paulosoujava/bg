import 'package:splashscreen/splashscreen.dart';

import 'package:flutter/material.dart';

import '../../../core/core.dart';

import '../../../ui/ui.dart';
import 'controller/splash_controller.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    final _controller = SplashController();
    _controller.load();
    return Scaffold(
      body: Stack(children: <Widget>[
        // SplashScreen(
        //   seconds: 3,
        //   navigateAfterSeconds: Root(Pages.HOME),
        //   loaderColor: Colors.transparent,
        // ),
        ValueListenableBuilder<bool>(
            valueListenable: _controller.redirectTo,
            builder: (_, enabled, __) => enabled
                ? Center(
                    child: MRImage.imageInBottomHasACustomTitle("logo".png(),
                        context, "Seja\n ", "MUITO\n", "\t\t\tBem Vindo"),
                  )
                : Root(_controller.page)),
      ]),
    );
  }
}
