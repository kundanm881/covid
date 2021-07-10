
import 'package:covid/services/mytheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider<ThemeNotifier>(
  create: (_) => ThemeNotifier(ThemeMode.system),
  child: MyApp(),
),);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _themeNotifier = Provider.of<ThemeNotifier>(context);
    return Consumer<ThemeNotifier>(
      builder: (context,themeNotifier,child){
        return MaterialApp(
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: themeNotifier.getTheme(),
          home: Scaffold(
            appBar: AppBar(
              title: Text("mandal ${themeNotifier.getTheme()}"),
            ),
          ),
        );
      },
    );
  }
}
