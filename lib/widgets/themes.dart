import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.light,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.red,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          // Optionally, set the title text style if needed:
          titleTextStyle: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white),
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );
}


