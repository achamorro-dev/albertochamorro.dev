import 'package:albertochamorro/src/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final themeProvider = Provider.of<ThemeProvider>(context);

    return Positioned(
      right: 0,
      top: 20,
      child: Row(
        children: <Widget>[
          Text('dark mode', style: Theme.of(context).textTheme.headline4.copyWith(
            fontSize: 18
          )),
          Switch(
            value: themeProvider.isDarkMode,
            onChanged: (val) {
              themeProvider.setThemeData = val;
            },
          ),
        ],
      ),
    );
  }
}