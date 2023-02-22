import 'package:dartz/dartz.dart';

import '../../core/failures/failures.dart';
import '../../core/usecases/usecase.dart';
import '../entities/advice_entity.dart';

class GetAdvice implements UseCase<Advice, NoParams> {
  @override
  Future<Either<Failure, Advice>> call(NoParams params) async {
    try {
      await Future.delayed(const Duration(seconds: 3));

      const Advice advice = Advice(
        id: '1',
        advice: 'Test advice: Lorem ipsum dolor sit amet',
      );

      return const Right(advice);
    } catch (err) {
      return Left(UnexpectedFailure(
        error: err,
        message: 'Getting advice failed',
      ));
    }
  }
}
