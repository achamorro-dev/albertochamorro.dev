import 'package:flutter/material.dart';
import 'package:flutter_keynote/flutter_keynote.dart';
import 'package:provider/provider.dart';

import 'package:albertochamorro/src/themes/theme.dart';
import 'package:albertochamorro/src/themes/theme_provider.dart';
import 'package:albertochamorro/src/slides/welcome_slide.dart';
import 'package:albertochamorro/src/slides/contact_slide.dart';
import 'package:albertochamorro/src/slides/skills_slide.dart';
import 'package:albertochamorro/src/slides/work_experience.dart';
import 'package:albertochamorro/src/slides/projects_interests_slide.dart';

import 'data/alberto_data.dart';
 
List<Widget> slides = [
  WelcomeSlide(),
  ContactSlide(),
  SkillsSlide(),
  WorkExperienceSlide(experienceData: workExperienceData[0],),
  WorkExperienceSlide(experienceData: workExperienceData[1],),
  WorkExperienceSlide(experienceData: workExperienceData[2],),
  ProjectsInterestsSlide(),
];


class AlbertoApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return KeynoteApp(
      darkTheme: darkTheme(context, 0),
      slides: slides,
      theme: lightTheme(context, 0),
      title: 'Alberto Chamorro',
      themeMode: themeProvider.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      transition: KeynoteTransition.fade,
    );
  }
}