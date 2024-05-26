import 'package:flutter/material.dart';

const List<Color> colorList = [
  Color.fromRGBO(26, 42, 64, 100),
];

class AppTheme {

  

  AppTheme();

  ThemeData getThemeData() {
    return ThemeData(     
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        centerTitle: false,
      ),
    );
  }

}