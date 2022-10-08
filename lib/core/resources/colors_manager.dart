import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ColorManager {
  // Scaffold
  static const Color sWhite = Color(0xFFFFFFFF);
  static const Color sBlack = Color(0xFF1A1A1A);

  // Buttons
  static  Color buttoColor = HexColor("#16919B") ;


  // Generic
  static const Color gGrey = Color(0xFF5A5A5A);
  static  Color otherChatBubble = HexColor("#77838F");
  static  Color ok = HexColor("#1BC5BD");
  static  Color sheet = HexColor("#D8D8D8");
  static  Color active = Colors.green;
  static  Color grey = Colors.grey;

  // Material Color
  static const MaterialColor mGreen = MaterialColor(
    0xFF4EBE9F,
    {
      50: Color(0xFF4EBE9F),
      100: Color(0xFF4EBE9F),
      200: Color(0xFF4EBE9F),
      300: Color(0xFF4EBE9F),
      400: Color(0xFF4EBE9F),
      500: Color(0xFF4EBE9F),
      600: Color(0xFF4EBE9F),
      700: Color(0xFF4EBE9F),
      800: Color(0xFF4EBE9F),
      900: Color(0xFF4EBE9F),
    },
  );
}