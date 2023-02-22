import '../entities/advice_entity.dart';

abstract class AdviceRepository {
  Future<Advice> getAdvice();
}
