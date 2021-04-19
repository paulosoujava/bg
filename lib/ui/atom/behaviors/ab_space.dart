import 'package:flutter/cupertino.dart';

mixin ABSpace{
  //ATOM
  static buildSpaceH(double height) => SizedBox(height: height,);
  static buildSpaceW(double width) => SizedBox(width: width,);
  static buildSpaceWH(double width, double height) => SizedBox(width: width, height: height);
}