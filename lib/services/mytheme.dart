import 'package:flutter/material.dart';

//Theme class
class ThemeNotifier with ChangeNotifier {
  ThemeMode _themeData;

  ThemeNotifier(this._themeData);

  //dending Theme Mode to App
  getTheme() {
    return _themeData;
  }

  //get Theme Mode From App
  setTheme(ThemeMode themeMode) async {
    _themeData = themeMode;
    notifyListeners();
  }

}

final darkTheme = ThemeData(
  primarySwatch: Colors.grey,
  primaryColor: Colors.black,
  brightness: Brightness.dark,
  backgroundColor: const Color(0xFF212121),
  accentColor: Colors.white,
  accentIconTheme: IconThemeData(color: Colors.black),
  dividerColor: Colors.black12,
);

final lightTheme = ThemeData(
  primarySwatch: Colors.grey,
  primaryColor: Colors.white,
  brightness: Brightness.light,
  backgroundColor: const Color(0xFFE5E5E5),
  accentColor: Colors.black,
  accentIconTheme: IconThemeData(color: Colors.white),
  dividerColor: Colors.white54,
);