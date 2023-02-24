import 'package:dartz/dartz.dart';

import '../../core/errors/failures/failures.dart';
import '../entities/entities.dart';

abstract class AdviceRepository {
  Future<Either<Failure, Advice>> getAdvice();
}
