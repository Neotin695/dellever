import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData dark({Color color = const Color(0xfff211ab)}) => ThemeData(
      textTheme: GoogleFonts.notoKufiArabicTextTheme(),
      primaryColor: color,
      secondaryHeaderColor: const Color(0xfff211ab),
      disabledColor: const Color(0xffa2a7ad),
      brightness: Brightness.dark,
      hintColor: const Color(0xFFbebebe),
      cardColor: const Color(0xFF30313C),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: color)),
      colorScheme: ColorScheme.dark(primary: color, secondary: color)
          .copyWith(background: const Color(0xFF191A26))
          .copyWith(
            error: const Color(0xFFdd3135),
          ),
    );
