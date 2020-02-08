import 'package:flutter/material.dart';
import 'package:flutter_keynote/flutter_keynote.dart';

import 'package:albertochamorro/src/themes/theme.dart';
import 'package:albertochamorro/src/slides/welcome_slide.dart';
import 'package:albertochamorro/src/slides/contact_slide.dart';
import 'package:albertochamorro/src/slides/skills_slide.dart';
 
const List<Widget> slides = [
  WelcomeSlide(),
  ContactSlide(),
  SkillsSlide(),
];

class AlbertoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return KeynoteApp(
      darkTheme: darkTheme(context),
      slides: slides,
      theme: lightTheme(context),
      title: 'Alberto Chamorro',
      themeMode: ThemeMode.dark,
      transition: KeynoteTransition.fade,
    );
  }
}