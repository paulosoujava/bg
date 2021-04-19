import 'package:flutter/material.dart';

import '../atom.dart';


class ARText{
 static Widget title(data, {Color color = Colors.white}){
   return ABText.buildAtomText(
     title: data,
       maxLines: 2,
       style:  ABText.buildStyle(color, fontWeight: FontWeight.bold )


   );
 }
 static Widget subtitle(data, {Color color = Colors.white}){
   return ABText.buildAtomText(
       title: data,
       maxLines: 4,
       style:  ABText.buildStyle(color, fontSize: 12.0 )
   );
 }

 static Widget strong(data, {Color color = Colors.white}){
   return ABText.buildAtomText(
       title: data,
       maxLines: 2,
       style:  ABText.buildStyle(color, fontWeight: FontWeight.bold, fontSize: 17.0 )
   );
 }
  static Widget customText(BuildContext context, String part1, String part2, String part3)=>
      ABText.buildCustomText( context,  part1,  part2,  part3);
}