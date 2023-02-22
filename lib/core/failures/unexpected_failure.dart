import 'failure.dart';

class UnexpectedFailure extends Failure {
  const UnexpectedFailure({
    super.error,
    super.message,
    super.stackTrace,
  });
}
