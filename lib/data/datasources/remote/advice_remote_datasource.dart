import 'package:dio/dio.dart';

import '../../../core/errors/exceptions/exceptions.dart';
import '../../../domain/entities/entities.dart';
import '../../models/models.dart';
import '../../utils/constants/constants.dart';
import '../../utils/helpers/helpers.dart';

abstract class AdviceRemoteDataSource {
  /// Requests a random advice from API
  ///
  /// Returns [Advice] if successful
  ///
  /// Throws [ServerException] if status code is not 200
  ///
  /// Throws [NetworkException] if there's a network connection problem
  Future<Advice> getRandomAdvice();
}

class AdviceRemoteDataSourceImpl implements AdviceRemoteDataSource {
  final Dio dio;

  const AdviceRemoteDataSourceImpl({
    required this.dio,
  });

  @override
  Future<Advice> getRandomAdvice() async {
    try {
      final Response response = await dio.get(
        '$kApiUrl/api/v1/advice',
        options: Options(headers: {'Content-Type': 'application/json'}),
      );

      if (response.statusCode != 200) {
        throw handleStatusError(response);
      }

      final Advice advice = AdviceModel.fromMap(response.data);

      return advice;
    } on DioError catch (err, stackTrace) {
      throw handleDioError(err, stackTrace);
    } on ServerException catch (err, stackTrace) {
      throw ServerException(error: err.error, stackTrace: stackTrace);
    } catch (err, stackTrace) {
      throw UnexpectedException(error: err, stackTrace: stackTrace);
    }
  }
}
