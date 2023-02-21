import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dependency_injector.dart';
import 'presentation/cubits/cubits.dart';
import 'presentation/pages/pages.dart';
import 'presentation/utils/themes/app_theme.dart';

class AdvisorApp extends StatelessWidget {
  const AdvisorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: sl<ThemeModeCubit>(),
      child: BlocBuilder<ThemeModeCubit, ThemeModeState>(
        builder: (ctx, state) => MaterialApp(
          title: 'ADVISOR APP',
          debugShowCheckedModeBanner: false,
          themeMode: state.themeMode,
          theme: sl<AppTheme>().lightTheme,
          darkTheme: sl<AppTheme>().darkTheme,
          home: const AdvicePage(),
        ),
      ),
    );
  }
}
