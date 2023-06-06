
import 'package:flutter/material.dart';
import 'package:journal/core/presentation/theme/journal_colors.dart';

class _Dialog extends Dialog {
  _Dialog({
    super.key,
    required BuildContext context,
    Widget? child,
  }) : super(
          alignment: Alignment.center,
          insetPadding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Container(
            constraints: BoxConstraints(maxWidth: _getMaxWidth(328)),
            decoration: BoxDecoration(
                color: JournalColors.primary,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: JournalColors.vinRouge,
                )),
            padding: const EdgeInsets.all(16).copyWith(top: 24),
            child: child,
          ),
        );
}

class BaseDialog extends _Dialog {
  BaseDialog({
    super.key,
    required super.context,
    required Text title,
    Text? description,
    Widget? child,
    double titleTop = 16,
    List<Widget> buttons = const [],
  }) : super(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: titleTop),
              title,
              if (description != null)
                const SizedBox(
                  height: 8,
                ),
              if (description != null) description,
              const SizedBox(
                height: 16,
              ),
              child ?? Container(),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: _getAlignment(buttons),
                children: buttons,
              )
            ],
          ),
        );
}

///obtains the alignment
///depending on the amount of items in the [list]
MainAxisAlignment _getAlignment(List list) {
  if (list.length > 1) {
    return MainAxisAlignment.spaceBetween;
  }
  return MainAxisAlignment.center;
}

///obtains the maximum width that a container could have
double _getMaxWidth(double width) {
  return width * 1.5;
}

extension Show on BaseDialog {
  show(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => this,
    );
  }
}
