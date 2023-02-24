import '../../utils/constants/constants.dart';
import 'failure.dart';

// EITHER ADD STACK TRACE OR NOT
class UnexpectedFailure extends Failure {
  UnexpectedFailure({
    super.message = kUnexpectedFailureMsg,
    super.exception,
  });

  @override
  List<Object?> get props => [message, exception];

  @override
  String toString() =>
      'UnexpectedFailure(message: $message, exception: $exception)';
}
