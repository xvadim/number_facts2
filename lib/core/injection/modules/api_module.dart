import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../api/logger_interceptor.dart';

@module
abstract class ApiModule {
  @singleton
  Dio dioClient() {
    final options = BaseOptions(
      baseUrl: _endPoint,
      headers: {'Content-Type': 'application/json'},
    );

    return Dio(options)
      ..interceptors.addAll(
        [if (kDebugMode) LoggerInterceptor()],
      );
  }

  static const _endPoint = 'http://numbersapi.com';
}
