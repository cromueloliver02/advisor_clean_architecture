import 'package:flutter/material.dart';

class InitialAdviceField extends StatelessWidget {
  const InitialAdviceField({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Text(
      'Your advice is waiting for you',
      textAlign: TextAlign.center,
      style: theme.textTheme.displayLarge,
    );
  }
}
