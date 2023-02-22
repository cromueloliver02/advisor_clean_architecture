import 'failure.dart';

class NetworkFailure extends Failure {
  const NetworkFailure({
    super.error,
    super.message,
    super.stackTrace,
  });
}
