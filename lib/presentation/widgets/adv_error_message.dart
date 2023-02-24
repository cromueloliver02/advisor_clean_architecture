import 'package:flutter/material.dart';

class ADVErrorMessage extends StatelessWidget {
  final String message;

  const ADVErrorMessage({
    super.key,
    this.message = 'Ooops, something went wrong',
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.error,
          size: 40,
          color: Colors.redAccent,
        ),
        const SizedBox(height: 20),
        Text(
          message,
          textAlign: TextAlign.center,
          style: theme.textTheme.displayLarge!.copyWith(
            height: 1.3,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
