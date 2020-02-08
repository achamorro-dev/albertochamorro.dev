import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme(BuildContext context) => 
  ThemeData(
    backgroundColor: Colors.white,
    primaryColor: Color(0xff0175c2),
    textTheme: TextTheme(
      headline1: GoogleFonts.montserrat().copyWith(
        fontSize: 60.0,
        color: Color(0xff0175c2),
        fontWeight: FontWeight.w700
      ),
      headline2: GoogleFonts.montserrat().copyWith(
        fontSize: 60.0
      ),
      headline3: GoogleFonts.montserrat().copyWith(
        fontSize: 40.0,
        color: Color(0xff0175c2),
        fontWeight: FontWeight.w700
      ),
      bodyText1: GoogleFonts.lato().copyWith(
        fontSize: 30.0,
      ),
      bodyText2: GoogleFonts.lato().copyWith(
        fontSize: 24.0,
      ),
    )
  );

ThemeData darkTheme(BuildContext context) => 
  ThemeData(
    backgroundColor: Color(0xff1b262c),
    primaryColor: Color(0xff02569b),
    textTheme: TextTheme(
      headline1: GoogleFonts.montserrat().copyWith(
        fontSize: 60.0,
        color: Color(0xff02569b),
        fontWeight: FontWeight.w700
      ),
      headline2: GoogleFonts.montserrat().copyWith(
        fontSize: 60.0,
        color: Color(0xfffafafa),
      ),
      headline3: GoogleFonts.montserrat().copyWith(
        fontSize: 40.0,
        color: Color(0xff02569b),
        fontWeight: FontWeight.w700
      ),
      bodyText1: GoogleFonts.lato().copyWith(
        fontSize: 30.0,
        color: Color(0xfffafafa),
      ),
      bodyText2: GoogleFonts.lato().copyWith(
        fontSize: 24.0,
        color: Color(0xfffafafa),
      ),
    )
  );
