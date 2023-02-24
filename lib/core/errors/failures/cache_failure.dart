import '../../utils/constants/constants.dart';
import 'failure.dart';

class CacheFailure extends Failure {
  CacheFailure({
    super.message = kCacheFailureMsg,
    super.exception,
  });

  @override
  List<Object?> get props => [message, exception];

  @override
  String toString() => 'CacheFailure(message: $message, exception: $exception)';
}
