import 'package:flutter/material.dart';

mixin ABImage {
  //ATOM
  static buildImageAssetAtom(path, fit, double h, double w) =>
      Image(image: AssetImage(path), fit: fit, width: w, height: h);
}
