import 'package:flutter/material.dart';

class AdviceView extends StatelessWidget {
  const AdviceView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Advicer',
          style: textTheme.displayLarge,
        ),
        actions: [
          Switch(
            value: true,
            onChanged: (bool value) {},
          ),
        ],
      ),
      body: const Placeholder(),
    );
  }
}
