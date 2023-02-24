import 'dart:io';

import 'package:dio/dio.dart';

import '../../../core/errors/exceptions/exceptions.dart';

Exception handleDioError(DioError err, StackTrace stackTrace) {
  if (err.type != DioErrorType.unknown) {
    final String error =
        'DioError [${err.type}]: ${err.message ?? ''}; Response: ${err.response ?? ''}';

    return ServerException(
      error: error,
      stackTrace: err.stackTrace ?? stackTrace,
    );
  }

  // if err.error == DioErrorType.unknown
  if (err.error is SocketException) {
    return NetworkException(
      error: err.error!,
      stackTrace: err.stackTrace ?? stackTrace,
    );
  }

  return err;
}
