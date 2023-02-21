import 'package:flutter/material.dart';

class ADVLoadingField extends StatelessWidget {
  final String message;

  const ADVLoadingField({
    super.key,
    this.message = 'Loading...',
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircularProgressIndicator(
          color: theme.colorScheme.secondary,
        ),
        const SizedBox(height: 40),
        Text(message)
      ],
    );
  }
}
