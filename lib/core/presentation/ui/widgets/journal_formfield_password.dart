import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:journal/core/presentation/translator/translator_routes.dart';
import 'package:journal/core/presentation/ui/widgets/journal_formfield.dart';

class JournalFormFieldPassword extends StatefulWidget {
  const JournalFormFieldPassword({
    super.key,
    this.decoration,
    this.hintText,
    this.labelText,
    this.errorText,
  });

  final InputDecoration? decoration;
  final String? hintText;
  final String? labelText;
  final String? errorText;

  @override
  State<JournalFormFieldPassword> createState() =>
      _JournalFormFieldPasswordState();
}

class _JournalFormFieldPasswordState extends State<JournalFormFieldPassword> {
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    final labelText = widget.labelText ?? tr(TR.password);
    return JournalFormField(
      maxLength: 30,
      obscureText: showPassword,
      labelText: labelText,
      decoration: (widget.decoration ?? const InputDecoration()).copyWith(
        counterText: '',
      ),
      hintText: widget.hintText,
      errorText: widget.errorText,
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            showPassword = !showPassword;
          });
        },
        icon: Icon(
          _icon,
        ),
      ),
    );
  }

  IconData get _icon {
    if (showPassword) {
      return Icons.visibility;
    }
    return Icons.visibility_off;
  }
}
