import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../../../ui/root/root.dart';

mixin NavigatorManager{
  redirect(BuildContext context, Pages page) {
    Navigator.of(context).push(_createRoute(page));
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