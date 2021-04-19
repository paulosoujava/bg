import 'package:flutter/material.dart';

mixin ABText {
  static buildStyle(color, {fontWeight: FontWeight.normal, fontSize: 16.0}) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  //ATOM
  static buildAtomText({title, maxLines, style}) {
    return Text(
      title,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: style,
    );
  }

  static buildCustomText(
          BuildContext context, String part1, String part2, String part3) =>
      RichText(
        text: TextSpan(
          text: part1,
          style: Theme.of(context).textTheme.headline1,
          children: <TextSpan>[
            TextSpan(
                text: part2,
                style: TextStyle(color: Colors.brown, fontSize: 46)),
            TextSpan(
                text: part3, style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      );
}
