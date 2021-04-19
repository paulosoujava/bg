import 'package:flutter/material.dart';

mixin ABInput {
  //ATOM
  static buildAtomInput(hintText,onChanged,maxLines,obscureText,keyboardType) {
    return TextField(
      keyboardType: keyboardType,
      maxLines: maxLines,
      obscureText: obscureText,
       onChanged: onChanged,
      decoration:  InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.amberAccent, width: 1.0),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black87, width: 1.0),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.0),
        ),
        hintText: hintText,
      ),
    );
  }
}
