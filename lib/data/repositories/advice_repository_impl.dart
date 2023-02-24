import 'package:dartz/dartz.dart';

import '../../core/errors/exceptions/exceptions.dart';
import '../../core/errors/failures/failures.dart';
import '../../domain/entities/entities.dart';
import '../../domain/repositories/repositories.dart';
import '../datasources/datasources.dart';

class AdviceRepositoryImpl implements AdviceRepository {
  final AdviceRemoteDataSource adviceRemoteDataSource;

  const AdviceRepositoryImpl({
    required this.adviceRemoteDataSource,
  });

  @override
  Future<Either<Failure, Advice>> getAdvice() async {
    try {
      final Advice advice = await adviceRemoteDataSource.getRandomAdvice();
      return Right(advice);
    } on ServerException catch (err) {
      return Left(ServerFailure(exception: err));
    } on NetworkException catch (err) {
      return Left(NetworkFailure(exception: err));
    } catch (err) {
      return Left(UnexpectedFailure(exception: err));
    }
  }
}
