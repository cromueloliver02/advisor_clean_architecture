import 'package:get_it/get_it.dart';

import 'domain/usecases/get_advice_usecase.dart';
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
  sl.registerLazySingleton<GetAdvice>(() => GetAdvice());

  // blocs
  sl.registerFactory<AdviceBloc>(() => AdviceBloc(getAdvice: sl<GetAdvice>()));

  // cubits
  sl.registerFactory<ThemeModeCubit>(() => ThemeModeCubit());

  // utilities
  sl.registerLazySingleton<AppTheme>(() => AppTheme());
}
