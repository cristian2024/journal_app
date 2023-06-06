import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:journal/core/presentation/theme/journal_colors.dart';

part 'text_theme.dart';

ThemeData _baseTheme = ThemeData.dark();

ThemeData theme = _baseTheme.copyWith(
  colorScheme: ColorScheme.fromSeed(
    seedColor: JournalColors.primary,
    primary: JournalColors.primary,
    secondary: JournalColors.secondary,
  ),
  useMaterial3: true,
  textTheme: textTheme(_baseTheme),
  primaryColor: JournalColors.primary.withOpacity(0.5),

  scaffoldBackgroundColor: JournalColors.background,
  // colorScheme: _baseTheme.colorScheme.copyWith(
  //   primary: CrisinaColors.accentSwatch,
  //   shadow: CrisinaColors.richBlackM80,
  //   error: CrisinaColors.strawBerry,
  // ),
  dialogTheme: _baseTheme.dialogTheme.copyWith(
    backgroundColor: Colors.transparent,
    alignment: Alignment.center,
    elevation: 2,
  ),
  // dividerTheme: _baseTheme.dividerTheme.copyWith(
  //   color: CrisinaColors.mountainMist,
  // ),
  // canvasColor: Colors.transparent,
  // chipTheme: _baseTheme.chipTheme.copyWith(
  //   backgroundColor: CrisinaColors.romance.withOpacity(.05),
  // ),
  // textTheme: textTheme(
  //   _baseTheme,
  // ),
  // iconTheme: _baseTheme.iconTheme.copyWith(
  //   color: CrisinaColors.romance,
  // ),
  appBarTheme: _baseTheme.appBarTheme.copyWith(
    backgroundColor: JournalColors.primary,
    elevation: 0,
  ),
  // bottomNavigationBarTheme: _baseTheme.bottomNavigationBarTheme.copyWith(
  //   selectedIconTheme: _getSelected().copyWith(
  //     color: CrisinaColors.romance,
  //     size: 30,
  //   ),
  //   landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
  //   showSelectedLabels: false,
  //   showUnselectedLabels: false,
  //   // backgroundColor: ,
  //   selectedItemColor: CrisinaColors.lavenderIndigo,
  // ),
  // inputDecorationTheme: _baseTheme.inputDecorationTheme.copyWith(
  //   labelStyle: baseFont.copyWith(
  //     fontSize: 16,
  //     color: CrisinaColors.gainsboro,
  //   ),
  //   errorBorder: const UnderlineInputBorder(
  //     borderSide: BorderSide(
  //       color: CrisinaColors.strawBerry,
  //       width: 1,
  //     ),
  //   ),
  //   errorStyle: baseFont.copyWith(
  //     fontSize: 12,
  //     color: CrisinaColors.strawBerry,
  //   ),
  //   enabledBorder: const UnderlineInputBorder(
  //     borderSide: BorderSide(
  //       color: CrisinaColors.gainsboro,
  //     ),
  //   ),
  //   focusedBorder: const UnderlineInputBorder(
  //     borderSide: BorderSide(
  //       color: CrisinaColors.lavenderIndigo,
  //     ),
  //   ),
  // ),
  // snackBarTheme: _baseTheme.snackBarTheme.copyWith(
  //   backgroundColor: CrisinaColors.purpleHeart,
  // ),
  // textSelectionTheme: _baseTheme.textSelectionTheme.copyWith(
  //   cursorColor: CrisinaColors.lavenderIndigo, //<-- SEE HERE
  // ),
  // buttonTheme: _baseTheme.buttonTheme.copyWith(
  //   buttonColor: CrisinaColors.lavenderIndigo,
  // ),
);
