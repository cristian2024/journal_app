import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class JText extends Text {
  JText(
    String route, {
    super.key,
    super.style,
    super.strutStyle,
    super.textAlign,
    super.textDirection,
    super.locale,
    super.softWrap,
    super.overflow,
    super.textScaleFactor,
    super.maxLines,
    super.semanticsLabel,
    super.textWidthBasis,
    super.textHeightBehavior,
    super.selectionColor,
  }) : super(tr(route));
}
