import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:journal/app/authentication/presentation/ui/authentication_screen.dart';
import 'package:journal/core/presentation/translator/translator_routes.dart';
import 'package:journal/core/presentation/ui/images/svgs.dart';
import 'package:journal/core/presentation/ui/widgets/journal_button.dart';
import 'package:journal/core/presentation/ui/widgets/journal_formfield.dart';
import 'package:journal/core/presentation/ui/widgets/journal_formfield_password.dart';
import 'package:journal/core/presentation/ui/widgets/journal_text.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});
  static const route = '${AuthScreen.route}/signin';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 48,
          ).copyWith(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgImg(
                svg: JournalSVGS.readingLight,
                width: size.width * 0.7,
              ),
              Column(
                children: [
                  JournalFormField(
                    labelText: tr(TR.email),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  JournalFormFieldPassword(),
                  // JournalFormField(
                  //   labelText: tr(TR.password),
                  // ),
                ],
              ),
              Column(
                children: [
                  const _Divider(),
                  const SizedBox(
                    height: 32,
                  ),
                  JournalButton(
                    type: JournalButtonType.outlined,
                    onPressed: () {},
                    child: SvgImg(
                      svg: JournalSVGS.googleIcon,
                    ),
                  ),
                ],
              ),
              Container()
            ],
          ),
        ),
      ),
    );
  }
}

class _Divider extends StatelessWidget {
  const _Divider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(),
        ),
        const SizedBox(
          width: 16,
        ),
        JText(TR.or),
        const SizedBox(
          width: 16,
        ),
        const Expanded(
          child: Divider(),
        ),
      ],
    );
  }
}
