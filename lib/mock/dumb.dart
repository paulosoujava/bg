import 'package:flutter/material.dart';
import 'package:gb_app/ui/organism/organism.dart';

class Dump {
  static List<Widget> dumpList(){
    return [
      OCardWithoutImage(
        name: "Paulo Jorge",
        content: "Você sabia que eu posso ser contratado pelo Grupo boticario?",
        createdAt: "2021-04-15 12:50",
        color: Colors.blueAccent,
      ),
      OCardWithoutImage(
        name: "Malu Oliveria",
        content: "Você consegue papai sempre estudando, você merece...",
        createdAt: "2021-04-15 12:50",
        color: Colors.teal,
      ),
      OCardWithoutImage(
        name: "Bruna Oliveria",
        content: "É concordo com a mana, mas será que isso não vai parecer chantagem eemocional...",
        createdAt: "2021-04-15 12:50",
        color: Colors.green,
      ),
      OCardWithoutImage(
        name: "Paulo Jorge",
        content: "Não neh.. vocês acham...",
        createdAt: "2021-04-15 12:50",
        color: Colors.blueAccent,
      ),
    ];
  }
}