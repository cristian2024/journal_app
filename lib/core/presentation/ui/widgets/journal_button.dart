// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:journal/core/presentation/theme/get_colors.dart';

class JournalButton extends StatelessWidget {
  const JournalButton({
    super.key,
    this.onPressed,
    this.heroTag,
    this.height,
    this.width,
    this.type = JournalButtonType.primary,
  });

  final VoidCallback? onPressed;
  final JournalButtonType type;
  final String? heroTag;

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final buttonStyle = type.getStyle(context);
    return SizedBox(
      width: width,
      height: height,
      child: FloatingActionButton(
        heroTag: heroTag,
        onPressed: onPressed,
        backgroundColor: buttonStyle.backgroundColor,
        shape: buttonStyle.shape,
      ),
    );
  }
}

enum JournalButtonType {
  primary,
  outlined,
}

Map<JournalButtonType, _JournalButtonStyle Function(BuildContext context)>
    _styles = {
  JournalButtonType.primary: (context) => const _JournalButtonStyle(),
  JournalButtonType.outlined: (context) => _JournalButtonStyle(
        backgroundColor: getSFBackground(context),
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(8.0),
          ),
          side: BorderSide(
            width: 2,
            color: getPrimary(context),
          ),
        ),
      ),
};

extension on JournalButtonType {
  _JournalButtonStyle getStyle(BuildContext context) {
    return _styles[this]?.call(context) ?? const _JournalButtonStyle();
  }
}

class _JournalButtonStyle {
  final ShapeBorder? shape;

  final double? elevation;
  final double? focusElevation;
  final double? hoverElevation;
  final double? highlightElevation;
  final double? disabledElevation;

  final Color? foregroundColor;
  final Color? backgroundColor;
  final Color? focusColor;
  final Color? hoverColor;
  final Color? splashColor;

  const _JournalButtonStyle({
    this.shape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(8.0),
      ),
    ),
    this.elevation = 0,
    this.focusElevation,
    this.hoverElevation,
    this.highlightElevation,
    this.disabledElevation,
    this.foregroundColor,
    this.backgroundColor,
    this.focusColor,
    this.hoverColor,
    this.splashColor,
  });
}
