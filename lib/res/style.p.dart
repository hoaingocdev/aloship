import 'package:flutter/material.dart';

class Font {
  Font._();
  static const String lexend = 'Lexend';
}

class St {
  St._();
  static TextStyle body16400 = const TextStyle(
    fontFamily: Font.lexend,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static TextStyle body16500 = const TextStyle(
    fontFamily: Font.lexend,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static TextStyle body14400 = const TextStyle(
    fontFamily: Font.lexend,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static TextStyle body18500 = const TextStyle(
    fontFamily: Font.lexend,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
}
