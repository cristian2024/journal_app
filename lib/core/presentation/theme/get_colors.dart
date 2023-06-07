import 'package:flutter/material.dart';

ThemeData _getTheme(BuildContext context) {
  return Theme.of(context);
}

Color getPrimary(BuildContext context) {
  return _getTheme(context).colorScheme.primary;
}

Color getSecondary(BuildContext context) {
  return _getTheme(context).colorScheme.secondary;
}

Color getSFBackground(BuildContext context) {
  return _getTheme(context).scaffoldBackgroundColor;
}
