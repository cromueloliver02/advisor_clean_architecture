import 'failure.dart';

class CacheFailure extends Failure {
  const CacheFailure({
    super.error,
    super.message,
    super.stackTrace,
  });
}
