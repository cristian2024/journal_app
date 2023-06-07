import 'package:flutter/material.dart';
import 'package:journal/app/authentication/presentation/ui/authentication_screen.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});
  static const route = '${AuthScreen.route}/signin';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Text(
          'Sign in',
        ),
      ),
    );
  }
}
