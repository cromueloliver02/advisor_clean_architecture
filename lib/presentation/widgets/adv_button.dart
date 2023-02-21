import 'package:flutter/material.dart';

class ADVButton extends StatelessWidget {
  final String title;

  const ADVButton({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return InkResponse(
      onTap: () {},
      child: Material(
        elevation: 20,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: theme.colorScheme.secondary,
          ),
          child: Text(
            title,
            style: theme.textTheme.displayLarge,
          ),
        ),
      ),
    );
  }
}
