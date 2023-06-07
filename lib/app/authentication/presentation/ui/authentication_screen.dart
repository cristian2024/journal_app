import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:journal/app/authentication/presentation/ui/signin_screen.dart';
import 'package:journal/app/authentication/presentation/ui/signup_screen.dart';
import 'package:journal/core/presentation/theme/get_text_styles.dart';
import 'package:journal/core/presentation/translator/translator_routes.dart';
import 'package:journal/core/presentation/ui/images/svgs.dart';
import 'package:journal/core/presentation/ui/widgets/journal_button.dart';
import 'package:journal/core/presentation/ui/widgets/journal_text.dart';
import 'package:journal/main.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  static const route = '/auth';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 16),
            child: InkWell(
              // type: JournalButtonType.text,
              onTap: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  HomePage.route,
                  (route) => false,
                );
              },
              child: JText(
                TR.enterNoAccount,
                style: getBodyMedium(context).copyWith(
                  decoration: TextDecoration.underline,
                ),
                maxLines: 1,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              JournalSVGS.readingSeat.routeAsset,
              height: 500,
              fit: BoxFit.fitWidth,
            ),
            Column(
              children: [
                JournalButton(
                  width: double.infinity,
                  // child: ,
                  routeText: TR.loginButton,
                  heroTag: 'first',
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      SigninScreen.route,
                    );
                  },
                  type: JournalButtonType.outlined,
                ),
                const SizedBox(
                  height: 16,
                ),
                RichText(
                  text: TextSpan(
                    text: tr(TR.notAccount),
                    style: getBodyMedium(context).copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text: ' ${tr(TR.registerText)}',
                        style: getBodyMedium(context).copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).pushNamed(
                              SignupScreen.route,
                            );
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 68,
            ),
          ],
        ),
      ),
    );
  }
}
