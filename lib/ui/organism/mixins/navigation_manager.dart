import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../../../ui/ui.dart';

mixin NavigatorManager{
  redirect(BuildContext context, Pages page, {bool replace = false}) {
    if(replace){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Root(page)),
      );
    }else{
      Navigator.of(context).push(_createRoute(page));
    }

  }

  Route _createRoute(Pages page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Root(page),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }
}