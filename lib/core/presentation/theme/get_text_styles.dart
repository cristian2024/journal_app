import 'package:flutter/material.dart';
import 'package:journal/core/presentation/theme/theme.dart';

TextTheme _getTheme(BuildContext context) {
  return Theme.of(context).textTheme;
}

TextStyle getHeadlineMedium(BuildContext context) {
  return _getTheme(context).headlineMedium ?? baseFont;
}

TextStyle getHeadlineSmall(BuildContext context) {
  return _getTheme(context).headlineSmall ?? baseFont;
}
