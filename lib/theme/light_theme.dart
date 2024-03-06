import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData light({Color color = const Color(0xFFF211AB)}) => ThemeData(
      textTheme: GoogleFonts.notoKufiArabicTextTheme(),
      primaryColor: color,
      secondaryHeaderColor: const Color(0xFFF211AB),
      disabledColor: const Color(0xFFBABFC4),
      brightness: Brightness.light,
      hintColor: const Color(0xFF9F9F9F),
      cardColor: Colors.white,
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: color)),
      colorScheme: ColorScheme.light(primary: color, secondary: color)
          .copyWith(background: const Color(0xFFFCFCFC))
          .copyWith(error: const Color(0xFFE84D4F)),
    );
