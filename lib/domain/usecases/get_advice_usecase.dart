import 'package:dartz/dartz.dart';

import '../../core/failures/failures.dart';
import '../../core/usecases/usecase.dart';

class GetAdvice implements UseCase<String, NoParams> {
  @override
  Future<Either<Failure, String>> call(NoParams params) async {
    try {
      await Future.delayed(const Duration(seconds: 3));

      return const Right('Test advice: Lorem ipsum dolor sit amet');
    } catch (err) {
      return Left(UnexpectedFailure(
        error: err,
        message: 'Getting advice failed',
      ));
    }
  }
}
