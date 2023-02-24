import 'package:dartz/dartz.dart';

import '../../core/errors/failures/failures.dart';
import '../../core/usecases/usecase.dart';
import '../entities/entities.dart';
import '../repositories/repositories.dart';

class GetAdvice implements UseCase<Advice, NoParams> {
  final AdviceRepository adviceRepository;

  const GetAdvice({
    required this.adviceRepository,
  });

  @override
  Future<Either<Failure, Advice>> call(NoParams params) {
    return adviceRepository.getAdvice();
  }
}
