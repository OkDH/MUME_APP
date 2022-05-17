import 'package:flutter/material.dart';

class MyColor {
  static const Color primary = Color(_blue);
  static const Color onPrimary = Colors.white;
  static const Color disableLight = Color(_grayLight);
  static const Color disableDark = Color(_grayDark);
  static const Color background = Color(_blueLight);
  static const Color textColor = Color(_blueDark);
  

  //TODO 추후 legacy 삭제
  static const Color appBarBackground = Color(_grayLight);
  static const Color textOnWhite = Color(_gray);
  static const Color primaryButton = Color(_purpleLight);
  static const Color boxBorder = Color(_grayLight100);
  static const Color accent = Color(_yellow);


  static const int _blue = 0xFF3A81F7;
  // static const int _blueLight = 0xFFF6F7FC;
  static const int _blueLight = 0xFFEDF1FD;
  static const int _blueDark = 0xFF192444;
  

  static const int _yellow = 0xFFF6C23D;

  static const int _gray = 0xFF595C68;
  static const int _grayLight = 0xFFFAFAFA;
  static const int _grayLight100 = 0xffe3e6f0;

  static const int _grayDark = 0xFF858896;

  static const int _purple = 0xFF4E72DE;
  static const int _purpleDark = 0xFF244CBF;
  static const int _purpleLight = 0xFF8EA5EB;
}