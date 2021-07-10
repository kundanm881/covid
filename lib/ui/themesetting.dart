import 'package:flutter/material.dart';

class ThemeSetting extends StatefulWidget {
  @override
  _ThemeSettingState createState() => _ThemeSettingState();
}

class _ThemeSettingState extends State<ThemeSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Settings"),
      ),
    );
  }
}
