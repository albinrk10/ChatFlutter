import 'package:flutter/material.dart';


const Color _customColor=Color(0xFF5C11D4); // siempre comiensa con 0xFF

const List<Color>_colorThemes=[
  _customColor,
  Colors.black,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.red,
  Colors.deepOrange,
];

class AppTheme{
 final int selectedColor;

  AppTheme({this.selectedColor=0}
  ): assert (selectedColor>=0 && selectedColor<=_colorThemes.length -1,
  'colors must be betwen 0 and ${_colorThemes.length}');


  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      //brightness: Brightness.dark
    );
  }
}