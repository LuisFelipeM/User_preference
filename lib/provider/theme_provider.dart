import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class themeProvider extends ChangeNotifier {
  ThemeData currentTheme;

  themeProvider({required bool isDarkmode})
      : currentTheme = isDarkmode ? ThemeData.dark() : ThemeData.light();

  setLigthMode() {
    currentTheme = ThemeData.light();
    notifyListeners();
  }

  setDarkMode() {
    currentTheme = ThemeData.dark();
    notifyListeners();
  }
}
