import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final Object error;
  final String message;
  final StackTrace? stackTrace;

  const Failure({
    this.error = 'Unexpected error',
    this.message = 'Something went wrong',
    this.stackTrace,
  });

  @override
  List<Object?> get props => [error, message, stackTrace];

  @override
  String toString() =>
      'Failure(error: $error, message: $message, stackTrace: $stackTrace)';
}
