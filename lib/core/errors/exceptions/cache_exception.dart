class CacheException implements Exception {
  final Object error;
  final StackTrace? stackTrace;

  const CacheException({
    required this.error,
    this.stackTrace,
  });

  @override
  String toString() => 'CacheException(error: $error, stackTrace: $stackTrace)';
}
