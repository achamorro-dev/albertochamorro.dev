import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool isDarkMode;

  ThemeProvider({this.isDarkMode});

  set setThemeData(bool val) {
    val ? 
      isDarkMode = true:
      isDarkMode = false;
    notifyListeners();
  }
}