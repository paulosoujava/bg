import 'package:flutter/material.dart';
import 'package:gb_app/ui/atom/render/ar_text.dart';

mixin MBButton{
  static buildButton(double height, double width, String label, Function onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Container(
          height: height,
          width: width,
          child: Center(child: ARText.subtitle(label))
      ),
    );
  }
    static buildLink(double height, double width, String label, Function onPressed, Color color){
      return TextButton(
        onPressed:onPressed,
        child: Container(
            height:height,
            width:width,
            child: Center(child: ARText.strong(label, color: color))
        ),
      );
  }
}