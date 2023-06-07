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

TextStyle getLabelLarge(BuildContext context) {
  return _getTheme(context).labelLarge ?? baseFont;
}



TextStyle getBodyMedium(BuildContext context) {
  return _getTheme(context).bodyMedium ?? baseFont;
}

TextStyle getBodyLarge(BuildContext context) {
  return _getTheme(context).bodyLarge ?? baseFont;
}
