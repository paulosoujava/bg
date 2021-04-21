import 'package:flutter/material.dart';

ThemeData makeAppTheme() {
  final primaryColor = Color.fromRGBO(31, 31, 31, 1.0);
  final primaryColorDark = Color.fromRGBO(61, 60, 60, 1.0);
  final primaryColorLight = Color.fromRGBO(47, 46, 46, 1.0);
  final secondaryColor = Color.fromRGBO(0, 77, 64, 1);
  final secondaryColorDark = Color.fromRGBO(0, 37, 26, 1);
  final disabledColor = Colors.grey[400];
  final dividerColor = Colors.grey;
  final textTheme = TextTheme(
    headline1: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: primaryColorDark
    )
  );

  final inputDecorationTheme = InputDecorationTheme(
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: primaryColorLight)
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: primaryColor)
    ),
    alignLabelWithHint: true
  );

  final buttonTheme = ButtonThemeData(
    colorScheme: ColorScheme.light(primary: primaryColor),
    buttonColor: primaryColor,
    splashColor: primaryColorLight,
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    textTheme: ButtonTextTheme.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20)
    )
  );
  
  return ThemeData(
    primaryColor: primaryColor,
    primaryColorDark: primaryColorDark,
    primaryColorLight: primaryColorLight,
    highlightColor: secondaryColor,
    secondaryHeaderColor: secondaryColorDark,
    disabledColor: disabledColor,
    dividerColor: dividerColor,
    accentColor: primaryColor,
    backgroundColor: Colors.white,
    textTheme: textTheme,
    inputDecorationTheme: inputDecorationTheme,
    buttonTheme: buttonTheme
  );
}