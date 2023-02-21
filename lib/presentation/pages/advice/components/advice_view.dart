import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubits/theme_mode/theme_mode_cubit.dart';

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
          BlocBuilder<ThemeModeCubit, ThemeModeState>(
            builder: (ctx, state) => Switch(
              value: state.themeMode == ThemeMode.dark,
              onChanged: context.read<ThemeModeCubit>().toggleThemeMode,
            ),
          ),
        ],
      ),
      body: const Placeholder(),
    );
  }
}
