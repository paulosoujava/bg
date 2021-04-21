import 'package:flutter/material.dart';
import 'package:gb_app/ui/atom/behaviors/behaviors.dart';

class ARInput {
  static Widget input(String hintText,
          {onChanged(String value),
          maxLines = 1,
          obscureText = false,
          maxLength,
          keyboardType = TextInputType.text,
          edtController}) =>
      ABInput.buildAtomInput(hintText, onChanged, maxLines, obscureText,
          keyboardType, maxLength, edtController);

  static Widget inputEmailPassword(String hintText, onChanged(String value),
          {maxLines = 1,
          obscureText = false,
          keyboardType = TextInputType.text}) =>
      ABInput.buildAtomInputWithouMaxLines(
          hintText, onChanged, maxLines, obscureText, keyboardType);
}
