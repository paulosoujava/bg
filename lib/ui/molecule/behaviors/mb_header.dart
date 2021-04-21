import 'package:flutter/material.dart';
import 'package:gb_app/ui/atom/atom.dart';

mixin MBHeader{

  static Widget buildHeader(context, path, double height, double width){
    return  Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(bottom: 32),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Theme.of(context).primaryColorLight,
                Theme.of(context).primaryColorDark
              ]),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 0),
                spreadRadius: 0,
                blurRadius: 4,
                color: Colors.black)
          ],
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80))),
      child:ARImage.fullImageAssetFill(path),
    );
  }
}