import 'package:dio/dio.dart';

import '../../../core/errors/exceptions/exceptions.dart';

ServerException handleStatusError(Response response) {
  final String statusCode = response.statusCode?.toString() ?? '';
  final String statusMessage = response.statusMessage ?? '';

  return ServerException(
    error: 'Message: $statusCode $statusMessage; Response: ${response.data};',
  );
}
