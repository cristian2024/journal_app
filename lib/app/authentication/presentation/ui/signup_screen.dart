import 'package:flutter/material.dart';
import 'package:journal/app/authentication/presentation/ui/authentication_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  static const route = '${AuthScreen.route}/signup';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Text(
          'Sign up',
        ),
      ),
    );
  }
}
