import 'failure.dart';

class ServerFailure extends Failure {
  const ServerFailure({
    super.error,
    super.message,
    super.stackTrace,
  });
}
