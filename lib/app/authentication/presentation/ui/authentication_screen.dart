import 'package:flutter/material.dart';
import 'package:journal/core/presentation/ui/widgets/journal_button.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  static const route = '/auth';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            JournalButton(
              width: double.infinity,
              heroTag: 'first',
              onPressed: () {},
              type: JournalButtonType.outlined,
            ),
            JournalButton(
              width: double.infinity,
              heroTag: 'first',
              onPressed: () {},
              type: JournalButtonType.outlined,
            ),
          ],
        ),
      ),
    );
  }
}
