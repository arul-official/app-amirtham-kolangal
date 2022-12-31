import 'package:flutter/material.dart';
import 'dart:math';

class ThemeColors {
  static const background = Color.fromARGB(255, 234, 234, 238);
  //static const background = Color(0xFFfafaff);
  static const _primaryRaw = (0xFFf79ba2);
  static const primary = Color(_primaryRaw);
  static const dark = Color(0xFFef707c);
  static const secondary = Color.fromARGB(255, 235, 235, 240);
  static final primarySwatch = _generateMaterialColor(primary);

  static const gradientBackground = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [ThemeColors.background, Colors.white]);

  static const gradientPrimary = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [ThemeColors.dark, ThemeColors.primary]);

  static MaterialColor _generateMaterialColor(Color color) {
    return MaterialColor(color.value, {
      50: _tintColor(color, 0.9),
      100: _tintColor(color, 0.8),
      200: _tintColor(color, 0.6),
      300: _tintColor(color, 0.4),
      400: _tintColor(color, 0.2),
      500: color,
      600: _shadeColor(color, 0.1),
      700: _shadeColor(color, 0.2),
      800: _shadeColor(color, 0.3),
      900: _shadeColor(color, 0.4),
    });
  }

  static int _tintValue(int value, double factor) =>
      max(0, min((value + ((255 - value) * factor)).round(), 255));

  static Color _tintColor(Color color, double factor) => Color.fromRGBO(
      _tintValue(color.red, factor),
      _tintValue(color.green, factor),
      _tintValue(color.blue, factor),
      1);

  static int shadeValue(int value, double factor) =>
      max(0, min(value - (value * factor).round(), 255));

  static Color _shadeColor(Color color, double factor) => Color.fromRGBO(
      shadeValue(color.red, factor),
      shadeValue(color.green, factor),
      shadeValue(color.blue, factor),
      1);

  //between #f8a1aa
  //light #fdb5c0
  //Dark #f79ba2

}

class ImageConstants {
  static String sliderBasePath =
      "https://raw.githubusercontent.com/arul-official/amirthamKolangal/main/images";
  static String imagesBasePath =
      "https://raw.githubusercontent.com/arul-official/amirthamKolangal/main/images/gallery";

  static String logoPath = "assets/images/logo.png";
}
