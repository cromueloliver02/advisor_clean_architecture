import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../data/datasources/datasources.dart';
import '../data/repositories/repositories.dart';
import '../domain/repositories/repositories.dart';
import '../domain/usecases/usecases.dart';
import '../presentation/app_theme.dart';
import '../presentation/blocs/blocs.dart';
import '../presentation/cubits/cubits.dart';

// service locator
final GetIt sl = GetIt.instance;

void setup() {
  // external services
  sl.registerLazySingleton<Dio>(() => Dio());

  // data sources
  sl.registerLazySingleton<AdviceRemoteDataSource>(
    () => AdviceRemoteDataSourceImpl(dio: sl<Dio>()),
  );

  // repositories
  sl.registerLazySingleton<AdviceRepository>(
    () => AdviceRepositoryImpl(
      adviceRemoteDataSource: sl<AdviceRemoteDataSource>(),
    ),
  );

  // use cases
  sl.registerLazySingleton<GetAdvice>(
    () => GetAdvice(adviceRepository: sl<AdviceRepository>()),
  );

  // blocs
  sl.registerFactory<AdviceBloc>(() => AdviceBloc(getAdvice: sl<GetAdvice>()));

  // cubits
  sl.registerFactory<ThemeModeCubit>(() => ThemeModeCubit());

  // utilities
  sl.registerLazySingleton<AppTheme>(() => AppTheme());
}
