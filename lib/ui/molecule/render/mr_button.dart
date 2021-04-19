import 'package:flutter/material.dart';

import '../molecule.dart';

class MRButton {
  static const double H = 50;
  static const double W = 140;

  static Widget regular(String label, Function onPressed,
          {double h = H, double w = W}) =>
      MBButton.buildButton(h, w, label, onPressed);

  static Widget disabled(String label, {double h = H, double w = W}) =>
      MBButton.buildButton(h, w, label, null);

  static Widget link(String label, Function onPressed,
      {double h = H, double w = W, Color color = Colors.black}) =>
      MBButton.buildLink(h, w, label, onPressed, color);

  static Widget disableLink(String label, {double h = H, double w = W, Color color = Colors.black}) =>
      MBButton.buildLink(h, w, label, null, color);
}
