import 'package:flutter/material.dart';

const _customColor = Color.fromARGB(31, 12, 19, 231);
const List<Color> _colorTheme = [
  _customColor,
  Colors.blue,
  Colors.orange,
  Colors.purple,
  Colors.green,
];

class Apptheme {
  final int selectColor;

  Apptheme({required this.selectColor})
      : assert(selectColor >= 0 && selectColor < _colorTheme.length,
            'cuidado pasas el rango a ${_colorTheme.length - 1}');

  ThemeData theme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorTheme[selectColor],
      brightness: Brightness.dark);
}
