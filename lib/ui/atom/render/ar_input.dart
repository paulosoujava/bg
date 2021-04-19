import 'package:flutter/material.dart';
import 'package:gb_app/ui/atom/behaviors/behaviors.dart';

class ARInput {
  static Widget input(String hintText, onChanged, {maxLines = 1,
    obscureText = false,
    keyboardType = TextInputType.text}) =>
      ABInput.buildAtomInput(hintText, onChanged,
          maxLines,
          obscureText,
          keyboardType);

}