import 'package:flutter/material.dart';
import 'package:gb_app/ui/themes/app_theme.dart';

mixin ABInput {
  //ATOM
  static buildAtomInput(hintText,onChanged,maxLines,obscureText,keyboardType) {
    return TextField(
      keyboardType: keyboardType,
      maxLines: maxLines,
      obscureText: obscureText,
       onChanged: onChanged,
      decoration:  InputDecoration(
        focusedBorder:  OutlineInputBorder(
          borderSide: BorderSide(color: Colors.lightGreen, width: 2.0),
        ),
        enabledBorder:  OutlineInputBorder(
          borderSide:  BorderSide(color: Colors.grey, width: 1.0),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 2.0),
        ),
        hintText: hintText,
      ),
    );
  }
}
