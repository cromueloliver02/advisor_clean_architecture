import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubits/cubits.dart';
import '../../../widgets/widgets.dart';
import 'advice_field.dart';

class AdviceView extends StatelessWidget {
  const AdviceView({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Adviser',
          style: theme.textTheme.displayLarge,
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: const [
            Expanded(
              child: Center(
                // child: Text(
                //   'Your advice is waiting for you lorem ipsum',
                //   style: theme.textTheme.displayLarge,
                // ),
                // child: CircularProgressIndicator(
                //   color: theme.colorScheme.secondary,
                // ),
                child: ADVErrorMessage(),
                // child: AdviceField(
                //   advice: 'Your advice is waiting for you lorem ipsum',
                // ),
              ),
            ),
            SizedBox(height: 75),
            ADVButton(title: 'Get Advice'),
            SizedBox(height: 75),
          ],
        ),
      ),
    );
  }
}
