import 'package:apexology/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.indigo,
  ),
  scaffoldBackgroundColor: MyColors.white,
  textTheme: GoogleFonts.robotoTextTheme(),
  cardTheme: const CardTheme(
    color: MyColors.white,
  ),
);
