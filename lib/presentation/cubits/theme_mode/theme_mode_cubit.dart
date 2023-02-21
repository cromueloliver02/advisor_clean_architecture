import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'theme_mode_state.dart';

class ThemeModeCubit extends Cubit<ThemeModeState> {
  ThemeModeCubit() : super(ThemeModeState.initial());

  void toggleThemeMode(bool isDark) {
    final ThemeMode newThemeMode = isDark ? ThemeMode.dark : ThemeMode.light;

    emit(state.copyWith(themeMode: () => newThemeMode));
  }
}
