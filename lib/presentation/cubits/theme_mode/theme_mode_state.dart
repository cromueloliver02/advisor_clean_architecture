part of 'theme_mode_cubit.dart';

class ThemeModeState extends Equatable {
  final ThemeMode themeMode;

  const ThemeModeState({
    required this.themeMode,
  });

  factory ThemeModeState.initial() {
    return const ThemeModeState(
      themeMode: ThemeMode.dark,
    );
  }

  @override
  List<Object> get props => [themeMode];

  @override
  String toString() => 'ThemeModeState(themeMode: $themeMode)';

  ThemeModeState copyWith({
    ThemeMode Function()? themeMode,
  }) {
    return ThemeModeState(
      themeMode: themeMode != null ? themeMode() : this.themeMode,
    );
  }
}
