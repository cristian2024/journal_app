// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:journal/core/presentation/theme/get_colors.dart';
import 'package:journal/core/presentation/theme/get_text_styles.dart';
import 'package:journal/core/presentation/ui/widgets/journal_text.dart';

class JournalButton extends StatelessWidget {
  const JournalButton({
    super.key,
    this.onPressed,
    this.heroTag,
    this.height,
    this.width,
    this.child,
    this.routeText,
    this.type = JournalButtonType.primary,
  }) : assert(
          child == null || routeText == null,
          'You only can use child or text, but not both',
        );

  final VoidCallback? onPressed;
  final JournalButtonType type;
  final String? heroTag;

  final double? width;
  final double? height;

  final Widget? child;
  final String? routeText;

  @override
  Widget build(BuildContext context) {
    final buttonStyle = type.getStyle(context);

    Widget texto = Container();
    if (routeText != null) {
      texto = JText(
        routeText ?? '',
        style: getHeadlineMedium(context).copyWith(
          color: getPrimary(context),
        ),
      );
    }
    return SizedBox(
      width: width,
      height: height,
      child: FloatingActionButton(
        elevation: buttonStyle.elevation,
        heroTag: heroTag,
        onPressed: onPressed,
        backgroundColor: buttonStyle.backgroundColor,
        shape: buttonStyle.shape,
        child: child ?? texto,
      ),
    );
  }
}

enum JournalButtonType {
  primary,
  outlined,
  text,
}

Map<JournalButtonType, _JournalButtonStyle Function(BuildContext context)>
    _styles = {
  JournalButtonType.text: (context) => _JournalButtonStyle(
        backgroundColor: getSFBackground(context),
        splashColor: Colors.transparent,
        elevation: 0,
        shape: const Border(),
      ),
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
