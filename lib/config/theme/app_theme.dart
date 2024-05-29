import 'package:flutter/material.dart';

const List<Color> _colorsThemes = [
  Color(0xFF0C356A),
  Color(0xFF0174BE),
  Color(0xFFFFC436),
  Color(0xFFFFF0CE),
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
  }) : assert(
      selectedColor >= 0 && selectedColor <= _colorsThemes.length -1,
      'Colors must be between 0 and ${ _colorsThemes.length }'
    );

  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: _colorsThemes[selectedColor]
    );
  }
}
