import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_theme.dart';
import 'dependency_injector.dart';
import 'presentation/cubits/cubits.dart';
import 'presentation/pages/pages.dart';

class AdvisorApp extends StatelessWidget {
  const AdvisorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: sl<ThemeModeCubit>(),
      child: BlocBuilder<ThemeModeCubit, ThemeModeState>(
        builder: (ctx, state) => MaterialApp(
          title: 'ADVISOR APP',
          themeMode: state.themeMode,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          debugShowCheckedModeBanner: false,
          home: const AdvicePage(),
        ),
      ),
    );
  }
}
