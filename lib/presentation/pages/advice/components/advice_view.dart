import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/blocs.dart';
import '../../../cubits/cubits.dart';
import '../../../widgets/widgets.dart';
import 'advice_field.dart';
import 'initial_advice_field.dart';

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
          children: [
            Expanded(
              child: Center(
                child: BlocBuilder<AdviceBloc, AdviceState>(
                  builder: _adviceBuilder,
                ),
              ),
            ),
            const SizedBox(height: 75),
            ADVButton(
              title: 'Get Advice',
              onPressed: () => _getAdvice(context),
            ),
            const SizedBox(height: 75),
          ],
        ),
      ),
    );
  }

  void _getAdvice(BuildContext ctx) {
    ctx.read<AdviceBloc>().add(AdviceGetRequested());
  }

  Widget _adviceBuilder(BuildContext ctx, AdviceState state) {
    if (state is AdviceInitial) {
      return const InitialAdviceField();
    }

    if (state is AdviceLoadInProgress) {
      return const ADVLoadingField();
    }

    if (state is AdviceLoadFailure) {
      return ADVErrorMessage(message: state.error.message);
    }

    return AdviceField(
      advice: (state as AdviceLoadSuccess).advice,
    );
  }
}
