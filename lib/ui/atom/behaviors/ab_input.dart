import 'package:flutter/material.dart';


mixin ABInput {
  //ATOM
  static buildAtomInput(hintText, onChanged, maxLines, obscureText, keyboardType, maxLength, edtController) {
    return TextField(
      controller: edtController,
      keyboardType: keyboardType,
      maxLines: maxLines,
      maxLength: maxLength,
      obscureText: obscureText,
       onChanged: onChanged,
      decoration:  _builDecoration(hintText),
    );
  }

  static buildAtomInputWithouMaxLines(hintText,onChanged,maxLines,obscureText,keyboardType ) {
    return TextField(
      maxLines: maxLines,
      obscureText: obscureText,
      keyboardType: keyboardType,
      onChanged: onChanged,
      decoration: _builDecoration(hintText),
    );
  }


  static _builDecoration(hintText) =>InputDecoration(
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
  );

}
