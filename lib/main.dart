import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:albertochamorro/src/app.dart';
import 'package:albertochamorro/src/themes/theme_provider.dart';

void main() {
  return runApp(
  ChangeNotifierProvider(
      create: (_) => ThemeProvider(isDarkMode: false),
      child: AlbertoApp()
  ));
}
