import 'package:splashscreen/splashscreen.dart';

import 'package:flutter/material.dart';

import '../../../core/core.dart';

import '../../../ui/molecule/molecule.dart';
import '../../../ui/root/root.dart';


class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        SplashScreen(
          seconds: 3,
          navigateAfterSeconds: Root(Pages.LOGIN),
          loaderColor: Colors.transparent,
        ),
        Center(
          child: MRImage.imageInBottomHasACustomTitle(
              "logo".png(), context, "Seja\n ", "MUITO\n", "\t\t\tBem Vindo"),
        ),
      ]),
    );
  }
}
