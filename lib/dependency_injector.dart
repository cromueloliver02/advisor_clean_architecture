import 'package:get_it/get_it.dart';

import 'presentation/blocs/blocs.dart';
import 'presentation/cubits/cubits.dart';
import 'presentation/utils/utils.dart';

// service locator
final GetIt sl = GetIt.instance;

void setup() {
  // external services

  // data sources

  // repositories

  // use cases

  // blocs
  sl.registerFactory<AdviceBloc>(() => AdviceBloc());

  // cubits
  sl.registerFactory<ThemeModeCubit>(() => ThemeModeCubit());

  // utilities
  sl.registerLazySingleton<AppTheme>(() => AppTheme());
}
